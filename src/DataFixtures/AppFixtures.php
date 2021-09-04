<?php

namespace App\DataFixtures;

use Faker;
use App\Entity\Bien;
use App\Entity\Energie;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create('fr_FR');

        for($a = 1 ; $a < 9 ; $a++) {
            $energie = new Energie();
            $energie       -> setColorName('couleur '.$a)
                        -> setHex($faker->hexcolor);
            $manager    -> persist($energie);
            
        }
        for($b = 1 ; $b < 30 ; $b++) {
                $bien = new Bien();
                $bien       -> setTitle('maison de campagne super vue')
                            -> setType('maison')
                            -> setLocalisation('Mazeres, 09270')
                            -> setPrix(500000)
                            -> setPieces(5)
                            -> setSurfaceH(300)
                            -> setSurfaceT(9000)
                            -> setDescription('And yet I wish you could manage it? And what are they made of? Alice asked in a shrill, passionate voice. Would YOU like cats if you were never even spoke to Time! Perhaps not, Alice replied.')
                            -> setEtat('ancien')
                            -> setphoto($faker->imageUrl($width = 640, $height = 480))
                            -> setDateCreation($faker->dateTime($max = 'now'))
                            -> setEnergie($energie)
                            ;
                $manager    -> persist($bien);
            }

        $manager->flush();
    }
}
