<?php

namespace Savvy\StaticBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class PageController extends Controller
{

    /**
     * @Route("/", name="home")
     * @Template()
     */
    public function indexAction()
    {
        return array();
    }

    /**
     * @Route("/our-approach", name="our_approach")
     * @Template()
     */
    public function aboutUsAction()
    {
        return array();
    }

    /**
     * @Route("/meet-the-team", name="meet_the_team")
     * @Template()
     */
    public function meetTheTeamAction()
    {
        return array();
    }

    /**
     * @Route("/clients", name="clients")
     * @Template()
     */
    public function clientsAction()
    {
        return array();
    }

    /**
     * @Route("/portfolio", name="portfolio")
     * @Template()
     */
    public function portfolioAction()
    {
        return array();
    }

}
