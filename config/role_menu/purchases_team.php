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
            'title' => 'Requirements',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Today\'s List',
                    'bullet' => 'dot',
                    'page' => '@my/todays-requirements'
                ],
            ]
        ],
        [
            'title' => 'Supplier',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Add Supplier',
                    'bullet' => 'dot',
                    'page' => 'supplier/create'
                ],
                [
                    'title' => 'Suppliers',
                    'bullet' => 'dot',
                    'page' => 'supplier'
                ],
            ]
        ],

    ],

];
