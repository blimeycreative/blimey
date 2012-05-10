<?php

namespace Savvy\PortfolioBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Savvy\PortfolioBundle\Entity\Portfolio
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Portfolio {

  /**
   * @var integer $id
   *
   * @ORM\Column(name="id", type="integer")
   * @ORM\Id
   * @ORM\GeneratedValue(strategy="AUTO")
   */
  private $id;

  /**
   * @var string $name
   *
   * @ORM\Column(name="name", type="string", length=255)
   */
  private $name;

  /**
   * @var string $description
   *
   * @ORM\Column(name="description", type="text")
   */
  private $description;
  
  /**
   * @var string $slug
   *
   * @ORM\Column(name="slug", type="string", length=255)
   */
  private $slug;

  /**
   * @ORM\OneToMany(targetEntity="Image", mappedBy="portfolio")
   */
  protected $images;
  
  public function __construct() {
    $this->images = new ArrayCollection();
  }
  
  public function __toString() {
    return $this->name;
  }

  /**
   * Get id
   *
   * @return integer 
   */
  public function getId() {
    return $this->id;
  }

  /**
   * Set name
   *
   * @param string $name
   */
  public function setName($name) {
    $this->name = $name;
  }

  /**
   * Get name
   *
   * @return string 
   */
  public function getName() {
    return $this->name;
  }


    /**
     * Add images
     *
     * @param Savvy\PortfolioBundle\Entity\Image $images
     */
    public function addImage(\Savvy\PortfolioBundle\Entity\Image $images)
    {
        $this->images[] = $images;
    }

    /**
     * Get images
     *
     * @return Doctrine\Common\Collections\Collection 
     */
    public function getImages()
    {
        return $this->images;
    }

    /**
     * Set slug
     *
     * @param string $slug
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;
    }

    /**
     * Get slug
     *
     * @return string 
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set description
     *
     * @param text $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * Get description
     *
     * @return text 
     */
    public function getDescription()
    {
        return $this->description;
    }
}