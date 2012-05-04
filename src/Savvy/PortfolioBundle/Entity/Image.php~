<?php

namespace Savvy\PortfolioBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Savvy\PortfolioBundle\Entity\Image
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Image {

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
   * @var string $path
   *
   * @ORM\Column(name="path", type="string", length=255)
   */
  private $path;

  /**
   * @ORM\ManyToOne(targetEntity="Portfolio", inversedBy="images")
   * @ORM\JoinColumn(name="portfolio_id", referencedColumnName="id")
   */
  private $portfolio;

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
   * Set path
   *
   * @param string $path
   */
  public function setPath($path) {
    $this->path = $path;
  }

  /**
   * Get path
   *
   * @return string 
   */
  public function getPath() {
    return $this->path;
  }


    /**
     * Set portfolio
     *
     * @param Savvy\PortfolioBundle\Entity\Portfolio $portfolio
     */
    public function setPortfolio(\Savvy\PortfolioBundle\Entity\Portfolio $portfolio)
    {
        $this->portfolio = $portfolio;
    }

    /**
     * Get portfolio
     *
     * @return Savvy\PortfolioBundle\Entity\Portfolio 
     */
    public function getPortfolio()
    {
        return $this->portfolio;
    }
}