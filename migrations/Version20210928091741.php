<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210928091741 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '#7 add to class Bien field ville and code postal';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien ADD ville VARCHAR(255) DEFAULT NULL, ADD cp INT NOT NULL');
        $this->addSql('ALTER TABLE energie CHANGE hex hex VARCHAR(50) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien DROP ville, DROP cp');
        $this->addSql('ALTER TABLE energie CHANGE hex hex VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
