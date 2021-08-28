<?php

namespace App\Controller;

use App\Entity\Bien;
use App\Form\BienType;
use App\Repository\BienRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/bien')]
class BienController extends AbstractController
{
    #[Route('/', name: 'bien_index', methods: ['GET'])]
    public function index(BienRepository $bienRepository): Response
    {
        return $this->render('bien/index.html.twig', [
            'controller_name' => 'Tous nos biens',
            'biens' => $bienRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'bien_new', methods: ['GET', 'POST'])]
    public function new(Request $request): Response
    {
        $bien = new Bien();
        $form = $this->createForm(BienType::class, $bien);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($bien);
            $entityManager->flush();

            return $this->redirectToRoute('bien_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('bien/new.html.twig', [
            'bien' => $bien,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'bien_show', methods: ['GET'])]
    public function show(Bien $bien): Response
    {
        return $this->render('bien/show.html.twig', [
            'controller_name' => "Voir le Bien",
            'bien' => $bien,
        ]);
    }

    #[Route('/{id}/edit', name: 'bien_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Bien $bien): Response
    {
        $form = $this->createForm(BienType::class, $bien);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('bien_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('bien/edit.html.twig', [
            'controller_name' => "Éditer le Bien",
            'bien' => $bien,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'bien_delete', methods: ['POST'])]
    public function delete(Request $request, Bien $bien): Response
    {
        if ($this->isCsrfTokenValid('delete' . $bien->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($bien);
            $entityManager->flush();
        }

        return $this->redirectToRoute('bien_index', [], Response::HTTP_SEE_OTHER);
    }
}
