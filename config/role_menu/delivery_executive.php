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

        /* Delivery sections */
        [
            'title' => 'Delivery',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Pending Delivery',
                    'bullet' => 'dot',
                    'page' => '/delivery/pending-deliveries'
                ],
                [
                    'title' => 'Confirmed Delivery',
                    'bullet' => 'dot',
                    'page' => '/delivery/confirmed-deliveries'
                ],
                [
                    'title' => 'Delivery Invoice',
                    'bullet' => 'dot',
                    'page' => 'delivery/today-delivery-invoices'
                ],
            ]
        ],
        /* Reported Product */
        [
            'title' => 'Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Todays reports',
                    'bullet' => 'dot',
                    'page' => '@me/reports/todays'
                ],
                [
                    'title' => 'Previous reports',
                    'bullet' => 'dot',
                    'page' => '@me/reports/previous'
                ],
            ]
        ],

    ],

];
