<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::body');
// Send survei data to database
$routes->post('/post-contacts', 'C_Contacts::index');