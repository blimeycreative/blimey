<?php

namespace Savvy\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class PortfolioController extends Controller
{
        
    /**
     * @Route("/portfolio/{slug}", name="portfolio")
     * @Template()
     */
    public function portfolioAction($slug)
    {
        $em = $this->getDoctrine()->getEntityManager();
        $portfolio = $em->getRepository('SavvyPortfolioBundle:Portfolio')->findOneBy(array('slug' => $slug));
        $images = $portfolio->getImages();
        return $this->render('SavvyPortfolioBundle:Portfolio:index.html.twig', array(
            'portfolio' => $portfolio,
            'images' => $images
        ));
    }
}
