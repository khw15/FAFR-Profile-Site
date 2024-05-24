<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::body');
$routes->post('/post-contacts', 'C_Contacts::index');