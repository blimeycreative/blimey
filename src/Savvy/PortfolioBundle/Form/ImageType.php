<?php

namespace Savvy\PortfolioBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;

class ImageType extends AbstractType
{
    public function buildForm(FormBuilder $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('path')
            ->add('portfolio')
        ;
    }

    public function getName()
    {
        return 'savvy_portfoliobundle_imagetype';
    }
}
