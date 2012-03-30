<?php

namespace Savvy\ContactExtensionBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class SavvyContactExtensionBundle extends Bundle
{
    public function getParent(){
        return 'OxygenContactBundle';
    }
}
