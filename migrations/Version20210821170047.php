<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210821170047 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '#4 add constraint between class Bien and class Energie';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien ADD energie_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE bien ADD CONSTRAINT FK_45EDC386B732A364 FOREIGN KEY (energie_id) REFERENCES energie (id)');
        $this->addSql('CREATE INDEX IDX_45EDC386B732A364 ON bien (energie_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE bien DROP FOREIGN KEY FK_45EDC386B732A364');
        $this->addSql('DROP INDEX IDX_45EDC386B732A364 ON bien');
        $this->addSql('ALTER TABLE bien DROP energie_id');
    }
}
