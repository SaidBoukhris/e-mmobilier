<?php

namespace App\Form;

use App\Entity\Bien;
use App\Entity\Energie;
use Symfony\Component\Form\AbstractType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;

class BienType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('type',TextType::class)
            ->add('localisation',TextType::class)
            ->add('prix',IntegerType::class)
            ->add('pieces',IntegerType::class)
            ->add('surfaceH',IntegerType::class)
            ->add('surfaceT',IntegerType::class)
            ->add('description',CKEditorType::class)
            ->add('etat',TextType::class)
            ->add('photo',UrlType::class)
            ->add('energie',EntityType::class,[
                'class' => Energie::class
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Bien::class,
        ]);
    }
}
