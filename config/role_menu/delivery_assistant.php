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
            'title' => '3. Root Smg-Manager',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A .Today's Requirements",
                    'bullet' => 'dot',
                    'page' => '@my/todays/overall-requirements'
                ]
            ]
        ],
        /* Delivery sections */
        [
            'title' => '6. Delivery',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Pending Delivery',
                    'bullet' => 'dot',
                    'page' => '/delivery/pending-deliveries'
                ],
                [
                    'title' => 'E. Delivery Invoice',
                    'bullet' => 'dot',
                    'page' => 'delivery/today-delivery-invoices'
                ]
            ]
        ],
        //Reports part
        [
            'section' => 'Reports',
        ],
        [
            'title' => '18. Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "C. Report List Truck",
                    'bullet' => 'dot',
                    'page' => 'reports/report-list-truck'
                ],
                
            ]
        ],
    ],

];
