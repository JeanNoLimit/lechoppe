<?php

namespace App\Controller\Admin;

use App\Entity\Product;
use App\Entity\BeerType;
use App\Entity\Provider;
use App\Entity\ProductionType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
    

        return $this->render('admin/dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('L\'Echoppe - Administration')
            ->renderContentMaximized();


    }

    public function configureMenuItems(): iterable
    {

        return [
            MenuItem::linkToDashboard('Dashboard', 'fa fa-home'),
            // yield MenuItem::linkToCrud('The Label', 'fas fa-list', EntityClass::class);
            MenuItem::subMenu('Catalogues', 'fa fa-book')->setSubItems([
                MenuItem::linkToCrud('Brasseries', 'fa fa-handshake', Provider::class),
                MenuItem::linkToCrud('Bières', 'fa fa-beer-mug-empty', Product::class)
            ]),
            MenuItem::linkToCrud('Type de production', 'fa fa-star', ProductionType::class),
            MenuItem::linkToCrud('Type de bière', 'fa fa-wheat-awn', BeerType::class)
            


        ];
    }
}