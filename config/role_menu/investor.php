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
                    'title' => 'B. Todays-Orders',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
                [
                    'title' => 'C. Previous-Order',
                    'bullet' => 'dot',
                    'page' => 'previousOrders/api'
                ],
            ]
        ],

        // //Reports part
        // [
        //     'section' => 'Reports',
        // ],
        // [
        //     'title' => '17. Reports',
        //     'icon' => 'media/svg/icons/Code/Compiling.svg',
        //     'bullet' => 'line',
        //     'root' => true,
        //     'submenu' => [
        //         [
        //             'title' => "A. Product's reports",
        //             'bullet' => 'dot',
        //             'page' => 'delivery/rejected-products'
        //         ],
        //         [
        //             'title' => "B. Unit and Purchase",
        //             'bullet' => 'dot',
        //             'page' => 'reports/unit-and-purchase'
        //         ],
        //         [
        //             'title' => "C. Report List Truck",
        //             'bullet' => 'dot',
        //             'page' => 'reports/report-list-truck'
        //         ],
        //     ]
        // ],
    ],

];
