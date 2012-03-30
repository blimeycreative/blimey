<?php

namespace Savvy\PortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Savvy\PortfolioBundle\Entity\Portfolio;
use Savvy\PortfolioBundle\Form\PortfolioType;

/**
 * Portfolio controller.
 *
 * @Route("/admin/portfolio")
 */
class PortfolioController extends Controller
{
    /**
     * Lists all Portfolio entities.
     *
     * @Route("/", name="admin_portfolio")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entities = $em->getRepository('SavvyPortfolioBundle:Portfolio')->findAll();

        return array('entities' => $entities);
    }

    /**
     * Finds and displays a Portfolio entity.
     *
     * @Route("/{id}/show", name="admin_portfolio_show")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('SavvyPortfolioBundle:Portfolio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Portfolio entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),        );
    }

    /**
     * Displays a form to create a new Portfolio entity.
     *
     * @Route("/new", name="admin_portfolio_new")
     * @Template()
     */
    public function newAction()
    {
        $entity = new Portfolio();
        $form   = $this->createForm(new PortfolioType(), $entity);

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Creates a new Portfolio entity.
     *
     * @Route("/create", name="admin_portfolio_create")
     * @Method("post")
     * @Template("SavvyPortfolioBundle:Portfolio:new.html.twig")
     */
    public function createAction()
    {
        $entity  = new Portfolio();
        $request = $this->getRequest();
        $form    = $this->createForm(new PortfolioType(), $entity);
        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admin_portfolio_show', array('id' => $entity->getId())));
            
        }

        return array(
            'entity' => $entity,
            'form'   => $form->createView()
        );
    }

    /**
     * Displays a form to edit an existing Portfolio entity.
     *
     * @Route("/{id}/edit", name="admin_portfolio_edit")
     * @Template()
     */
    public function editAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('SavvyPortfolioBundle:Portfolio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Portfolio entity.');
        }

        $editForm = $this->createForm(new PortfolioType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Edits an existing Portfolio entity.
     *
     * @Route("/{id}/update", name="admin_portfolio_update")
     * @Method("post")
     * @Template("SavvyPortfolioBundle:Portfolio:edit.html.twig")
     */
    public function updateAction($id)
    {
        $em = $this->getDoctrine()->getEntityManager();

        $entity = $em->getRepository('SavvyPortfolioBundle:Portfolio')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Portfolio entity.');
        }

        $editForm   = $this->createForm(new PortfolioType(), $entity);
        $deleteForm = $this->createDeleteForm($id);

        $request = $this->getRequest();

        $editForm->bindRequest($request);

        if ($editForm->isValid()) {
            $em->persist($entity);
            $em->flush();

            return $this->redirect($this->generateUrl('admin_portfolio_edit', array('id' => $id)));
        }

        return array(
            'entity'      => $entity,
            'edit_form'   => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        );
    }

    /**
     * Deletes a Portfolio entity.
     *
     * @Route("/{id}/delete", name="admin_portfolio_delete")
     * @Method("post")
     */
    public function deleteAction($id)
    {
        $form = $this->createDeleteForm($id);
        $request = $this->getRequest();

        $form->bindRequest($request);

        if ($form->isValid()) {
            $em = $this->getDoctrine()->getEntityManager();
            $entity = $em->getRepository('SavvyPortfolioBundle:Portfolio')->find($id);

            if (!$entity) {
                throw $this->createNotFoundException('Unable to find Portfolio entity.');
            }

            $em->remove($entity);
            $em->flush();
        }

        return $this->redirect($this->generateUrl('admin_portfolio'));
    }

    private function createDeleteForm($id)
    {
        return $this->createFormBuilder(array('id' => $id))
            ->add('id', 'hidden')
            ->getForm()
        ;
    }
}
