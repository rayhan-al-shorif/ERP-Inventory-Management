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
        /* Sales menu */
        [
            'title' => 'Orders',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Add New-Order',
                    'bullet' => 'dot',
                    'page' => 'order/create'
                ],
                [
                    'title' => 'Todays-Orders',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
            ]
        ],
        /* Product menu */
        [
            'title' => 'Products',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Products List',
                    'bullet' => 'dot',
                    'page' => 'product'
                ],
                [
                    'title' => 'Catagories List',
                    'bullet' => 'dot',
                    'page' => 'category'
                ],
            ]
        ],
         /* Pricing menu*/
        [
            'title' => 'Pricing',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Fixed Pricing',
                    'bullet' => 'dot',
                    'page' => 'fixing-pricing/fixingPricingViewSaler'
                ],
            ]
        ],
        // Control & Account Department Start
        [
            'section' => 'Control & Account Department',
        ],
        /* customer menu */
        [
            'title' => 'Customer',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "Customer Lists",
                    'bullet' => 'dot',
                    'page' => 'customer'
                ],
                [
                    'title' => "Add New Customer",
                    'bullet' => 'dot',
                    'page' => 'customer/create'
                ],
            ]
        ],
        
        /* customer payment menu */
        [
            'title' => '8. Customer Payment',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Payment Now",
                    'bullet' => 'dot',
                    'page' => 'customer-payment-up'
                ],
                [
                    'title' => "B. Transaction List",
                    'bullet' => 'dot',
                    'page' => 'customer-payment-up-transaction'
                ],
            ]
        ],
        // Control & Account Department End
    ],
];
