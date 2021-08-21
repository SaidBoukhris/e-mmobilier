<?php

namespace App\Controller;

use App\Repository\BienRepository;
use App\Repository\EnergieRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(BienRepository $bien, EnergieRepository $energie): Response
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'SBK IMMOBILIER',
            'biens' => $bien->findAll(),
            'energie' => $energie->findAll(),
        ]);
    }
}
