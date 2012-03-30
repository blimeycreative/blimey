<?php

namespace Savvy\PortfolioBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class PortfolioType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('description')
            ->add('slug')
        ;
    }

    public function getName()
    {
        return 'savvy_portfoliobundle_portfoliotype';
    }
}
