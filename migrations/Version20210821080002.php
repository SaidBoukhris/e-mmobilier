<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210821080002 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '#1 class Bien';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE bien (id INT AUTO_INCREMENT NOT NULL, type VARCHAR(255) NOT NULL, localisation VARCHAR(255) NOT NULL, prix INT NOT NULL, pieces INT NOT NULL, surface_h DOUBLE PRECISION NOT NULL, surface_t DOUBLE PRECISION DEFAULT NULL, description LONGTEXT NOT NULL, etat VARCHAR(8) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE bien');
    }
}
