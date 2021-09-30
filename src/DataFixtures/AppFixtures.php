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
        for($b = 1 ; $b < 7 ; $b++) {
                $bien = new Bien();
                $bien       -> setTitle('maison '.$faker->colorName)
                            -> setType($faker->randomElement([
                                'Appartement', 'Maison', 'Ferme'
                            ]))
                            -> setLocalisation($faker->address)
                            -> setVille($faker->departmentName)
                            -> setCp($faker->departmentNumber)
                            -> setPrix($faker->numberBetween(15000,700000))
                            -> setPieces($faker->numberBetween(1,10))
                            -> setSurfaceH($faker->numberBetween(25,500))
                            -> setSurfaceT($faker->numberBetween(0,50000))
                            -> setDescription($faker->realText($faker->numberBetween(10, 7000)))
                            -> setEtat($faker->randomElement([
                                'Ancien', 'neuf'
                            ]))
                            -> setphoto('https://via.placeholder.com/250/18c27b/FFFFFF?text=SBKImmobilier.com')
                            -> setDateCreation($faker->dateTime($max = 'now'))
                            -> setEnergie($energie)
                            ;
                $manager    -> persist($bien);
            }

        $manager->flush();
    }
}
