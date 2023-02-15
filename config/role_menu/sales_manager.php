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
                // [
                //     'title' => 'C. Previous-Order',
                //     'bullet' => 'dot',
                //     'page' => 'previousOrders'
                // ],
                [
                    'title' => 'C.Previous-Order',
                    'bullet' => 'dot',
                    'page' => 'previous-orders/api/index'
                ],
            ]
        ],
        [
            'title' => '2. Smg-Manager',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Todays Incoming Order',
                    'bullet' => 'dot',
                    'page' => 'my/incomming-order'
                ],
            ]
        ],
        [
            'title' => '3. Products',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Products List',
                    'bullet' => 'dot',
                    'page' => 'product'
                ],
            ]
        ],
        /* Delivery sections */
        [
            'title' => '4. Delivery',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Confirmed Delivery',
                    'bullet' => 'dot',
                    'page' => '/delivery/confirmed-deliveries'
                ],
            ]
        ],
        /* Customer-payment */
        /* customer payment menu */
        [
            'title' => '5. Payments',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Customer-Payment",
                    'bullet' => 'dot',
                    'page' => 'customer-payment-up'
                ],
                [
                    'title' => "B. Previous-Payment",
                    'bullet' => 'dot',
                    'page' => 'customers/previous/payments'
                ],
            ]
        ],
        // Control & Account Department Start
        [
            'section' => 'Control & Account Department',
        ],
        /* Customer's route */
        [
            'title' => '10. Customer',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Customer Lists",
                    'bullet' => 'dot',
                    'page' => 'customer'
                ],
                [
                    'title' => "B. Add New Customer",
                    'bullet' => 'dot',
                    'page' => 'customer/create'
                ],
            ]
        ],

        //User Begin
        [
            'section' => 'HR Department',
        ],
        [
            'title' => '15. Users',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. List Users",
                    'bullet' => 'dot',
                    'page' => 'user'
                ],
                [
                    'title' => "B. Add New User",
                    'bullet' => 'dot',
                    'page' => 'user/create'
                ],
            ]
        ],
        //Reports part
        [
            'section' => 'Reports',
        ],
        [
            'title' => '17. Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Unit and Purchase",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-purchase'
                ],
                [
                    'title' => "B. Units and Sales",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-sales'
                ],
                 [
                    'title' => "C. Pinik Order",
                    'bullet' => 'dot',
                    'page' => 'reports/pinik-order'
                ],
            ]
        ],
    ],

];
