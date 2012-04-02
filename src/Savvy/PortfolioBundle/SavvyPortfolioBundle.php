<?php

namespace Savvy\PortfolioBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class SavvyPortfolioBundle extends Bundle
{
  public function getParent(){
    return 'OxygenContactBundle';
  }
}
