<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210828214132 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '#5 add to class Bien fields date_publication,date_modification';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien ADD date_publication DATE DEFAULT NULL, ADD date_modification DATE DEFAULT NULL');
        $this->addSql('ALTER TABLE energie CHANGE hex hex VARCHAR(50) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien DROP date_publication, DROP date_modification');
        $this->addSql('ALTER TABLE energie CHANGE hex hex VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
    }
}
