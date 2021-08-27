<?php

namespace App\Entity;

use App\Repository\EnergieRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=EnergieRepository::class)
 */
class Energie
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $colorName;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $hex;

    /**
     * @ORM\OneToMany(targetEntity=Bien::class, mappedBy="energie")
     */
    private $bien;

    public function __construct()
    {
        $this->bien = new ArrayCollection();
    }

    public function __toString()
    {
        return $this->colorName;
    }
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getColorName(): ?string
    {
        return $this->colorName;
    }

    public function setColorName(string $colorName): self
    {
        $this->colorName = $colorName;

        return $this;
    }

    public function getHex(): ?string
    {
        return $this->hex;
    }

    public function setHex(string $hex): self
    {
        $this->hex = $hex;

        return $this;
    }

    /**
     * @return Collection|Bien[]
     */
    public function getBien(): Collection
    {
        return $this->bien;
    }

    public function addBien(Bien $bien): self
    {
        if (!$this->bien->contains($bien)) {
            $this->bien[] = $bien;
            $bien->setEnergie($this);
        }

        return $this;
    }

    public function removeBien(Bien $bien): self
    {
        if ($this->bien->removeElement($bien)) {
            // set the owning side to null (unless already changed)
            if ($bien->getEnergie() === $this) {
                $bien->setEnergie(null);
            }
        }

        return $this;
    }
}
