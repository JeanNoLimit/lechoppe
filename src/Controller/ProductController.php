<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Review;
use App\Form\CartType;
use App\Model\Filters;
use App\Entity\Product;
use App\Form\ReviewType;
use App\Form\FiltersType;
use App\Entity\ShopParameters;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ProductController extends AbstractController
{
    /**
     * Affiche la liste des produits
     *
     * @param EntityManagerInterface $entityManager
     * @param Request $request
     * @return Response
     */
    #[Route('/products', name: 'products_index')]
    public function index(
        EntityManagerInterface $entityManager,
        Request $request,
    ): Response {

        $filters = new Filters();
        $filters->page = $request->query->get('page', 1);
        $formFilter = $this ->createForm(FiltersType::class, $filters);

        $parameters = $entityManager->getRepository(ShopParameters::class)->findAll()[0];
        $products = $entityManager->getRepository(Product::class)->findWithoutCriteria($filters->page);

        $formFilter->handleRequest($request);

        if ($formFilter->isSubmitted() && $formFilter->isValid()) {
            $products = $entityManager
                ->getRepository(Product::class)
                ->findByCriteria($filters);
        }

        return $this->render('product/index.html.twig', [
            'products' => $products,
            'parameters' => $parameters,
            'formFilter' => $formFilter,
        ]);
    }


    /**
     *
     * Gère la vue détail produit
     *
     * @param EntityManagerInterface $entityManager
     * @param string $slug
     * @param Request $request
     * @return Response
     */
    #[Route('/products/{slug}', name: 'detail_product')]
    public function show(
        EntityManagerInterface $entityManager,
        string $slug = null,
        Request $request
    ): Response {

        $page = $request->query->get('page', 1);
        $product = $entityManager->getRepository(Product::class)->findOneBySlug($slug);
        $reviews = $entityManager->getRepository(Review::class)->findByProduct($product, $page);
        $parameters = $entityManager->getRepository(ShopParameters::class)->findAll()[0];
        //On veut savoir si l'utilisateur a déjà donné un avis sur ce produit.
        $userReview = $entityManager->getRepository(Review::class)->findReviewIfExist($this->getUser(), $product);

        $form = $this->createForm(CartType::class);
        $form->handleRequest($request);
        // Pour info :
        // J'ai basculé la gestion du formulaire d'ajout du produit dans le panier dans le cartController

        return $this->render('product/detail.html.twig', [
            'product' => $product,
            'parameters' => $parameters,
            'reviews' => $reviews,
            'userReview' => $userReview,
            'form' => $form
        ]);
    }

    /**
     *
     * Gestion du formulaire d'ajout/modification review
     *
     * @param EntityManagerInterface $entityManager
     * @param Review $review
     * @param Request $request
     * @param string $slug
     * @param int $userId
     * @return Response
     */
    #[IsGranted('ROLE_USER')]
    #[Route('/products/add_review/{slug}', name: 'add_review')]
    #[Route('/products/edit_review/{slug}/{userId}/{id}', name: 'edit_review')]
    public function addReview(
        EntityManagerInterface $entityManager,
        Review $review = null,
        Request $request,
        string $slug = null,
        int $userId = null,
    ): Response {

        //On récupère le produit et l'utilisateur nécessaire pour créer la review.
        $product = $entityManager->getRepository(Product::class)->findOneBySlug($slug);
        $userSession = $this->getUser();
        $user = $entityManager->getRepository(User::class)->find($userSession);

        //On vérifie que l'utilisateur est autorisé à rédiger ou modifier une review
        if ($user->isBan()) {
            $this->addFlash('alert', 'Vous n\'êtes pas autorisé à rédiger ou modifier une review!');
            return $this->redirectToRoute('detail_product', ['slug' => $product->getSlug()]);
        // On vérifie que la review a été créée par l'utilisateur connecté en session
        } elseif ($review && $userSession->getId() != $review->getUser()->getId()) {
            $this->addFlash('alert', 'Vous ne pouvez pas modifier ce commentaire!');
            return $this->redirectToRoute('detail_product', ['slug' => $product->getSlug()]);
        } elseif ($review && $userSession->getId() != $userId) {
            $this->addFlash('alert', 'vous ne pouvez pas modifier ce commentaire!');
            return $this->redirectToRoute('detail_product', ['slug' => $product->getSlug()]);
        } elseif ($review && $review->getProduct()->getId() != $product->getId()) {
            $this->addFlash('alert', 'vous ne pouvez pas modifier ce commentaire!');
            return $this->redirectToRoute('detail_product', ['slug' => $product->getSlug()]);
        } elseif (!$review || $userId != $userSession->getId()) {
            // On initialise un nouvel objet Review
            $review = new Review();
            //On insère le user et le produit dans la nouvelle instance de review.
            $review->setUser($userSession);
            $review->setProduct($product);
        } else {
            $review->setUpdatedAt(new \DateTimeImmutable());
        }

        $formReview = $this->createForm(ReviewType::class, $review);
        //On récupère les données reçu par l'intermédiaire du formulaire
        $formReview->handleRequest($request);

        if ($formReview->isSubmitted() && $formReview->isValid()) {
            // On insère les données du formulaire à notre Review
            $review = $formReview->getData();
            //On signale à Doctrine que l'objet doit être enregistré en b.d.d.
            $entityManager->persist($review);
            // On envoie les donnée à persister en b.d.d.
            $entityManager->flush();

            return $this->redirectToRoute('detail_product', ['slug' => $product->getSlug()]);
        }

        return $this->render('product/add_review.html.twig', [
            'formReview' => $formReview,
            'product' => $product
        ]);
    }
}
