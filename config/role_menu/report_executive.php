<?php
// Aside menu
return [
    'items' => [
        // Dashboard
        [
            'title' => 'Dashboard',
            'root' => true,
            'icon' => 'media/svg/icons/Design/Layers.svg', // or can be 'flaticon-home' or any flaticon-*
            'page' => '/user/dashboard',
            'new-tab' => false,
        ],

        // Production Department
        [
            'section' => 'Production Department',
        ],
        [
            'title' => '1. Orders',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Todays-Orders',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
                [
                    'title' => 'B.Api Previous-Order',
                    'bullet' => 'dot',
                    'page' => 'previousOrders/api'
                ],
            ]
        ],
        //Reports part
        [
            'section' => 'Reports',
        ],
        [
            'title' => '2. Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Units and Sales",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-sales'
                ],
            ]
        ],
    ],

];
