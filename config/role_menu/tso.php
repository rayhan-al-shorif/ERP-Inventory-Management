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
                    'title' => ' A. Add New-Order',
                    'bullet' => 'dot',
                    'page' => 'order/create'
                ],
                [
                    'title' => 'B. Todays-Orders',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
            ]
        ],
        /* Pricing menu*/
        // [
        //     'title' => '2. Pricing',
        //     'icon' => 'media/svg/icons/Code/Compiling.svg',
        //     'bullet' => 'line',
        //     'root' => true,
        //     'submenu' => [
        //         [
        //             'title' => 'A. Fixed Pricing',
        //             'bullet' => 'dot',
        //             'page' => 'fixing-pricing/fixingPricingViewSaler'
        //         ],
        //     ]
        // ],
        
    ],

];
