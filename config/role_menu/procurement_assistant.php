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
                [
                    'title' => 'C. Previous-Order',
                    'bullet' => 'dot',
                    'page' => 'previousOrders'
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
            'title' => '3. Root Smg-Manager',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A .Today's Requirements",
                    'bullet' => 'dot',
                    'page' => '@my/todays/overall-requirements'
                ],
                [
                    'title' => 'B. Fullfilled-Requirements',
                    'bullet' => 'dot',
                    'page' => '/@my/todays-fullfill-requirements'
                ],
            ]
        ],
        [
            'title' => '4. Purchase',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Today\'s List',
                    'bullet' => 'dot',
                    'page' => '@my/todays-requirements'
                ],
                [
                    'title' => 'B. Add Purchaser',
                    'bullet' => 'dot',
                    'page' => 'user/create'
                ],
            ]
        ],
        [
            'title' => '5. Products',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Products List',
                    'bullet' => 'dot',
                    'page' => 'product'
                ],
                [
                    'title' => 'B .Catagories List',
                    'bullet' => 'dot',
                    'page' => 'category'
                ],
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
                    'title' => 'B. Confirmed Delivery',
                    'bullet' => 'dot',
                    'page' => '/delivery/confirmed-deliveries'
                ],
                [
                    'title' => 'C. List Truck',
                    'bullet' => 'dot',
                    'page' => 'truck'
                ],
                [
                    'title' => 'D. Delivery Tracking',
                    'bullet' => 'dot',
                    'page' => 'delivery-tracking'
                ],
                [
                    'title' => 'E. Delivery Invoice',
                    'bullet' => 'dot',
                    'page' => 'delivery/today-delivery-invoices'
                ],
            ]
        ],
        /* Pricing menu*/
        [
            'title' => '7. Pricing',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Todays Pricing',
                    'bullet' => 'dot',
                    'page' => 'today-pricing'
                ],
                [
                    'title' => 'B. Fixed Pricing',
                    'bullet' => 'dot',
                    'page' => 'fixing-pricing'
                ],
                [
                    'title' => 'C. Customer-type',
                    'bullet' => 'dot',
                    'page' => 'customer/types/select'
                ],
            ]
        ],
        /* Customer-payment */
        /* customer payment menu */
        [
            'title' => '8. Payments',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Customer-Payment",
                    'bullet' => 'dot',
                    'page' => 'customers/payments'
                ],
                [
                    'title' => "B. Previous-Payment",
                    'bullet' => 'dot',
                    'page' => 'customers/previous/payments'
                ],
                [
                    'title' => "C. Nagad-Payment",
                    'bullet' => 'dot',
                    'page' => 'customers/nagad/payments'
                ],
            ]
        ],
        /* Zone */
        [
            'title' => '9. Zone',
            'root' => true,
            'icon' => 'media/svg/icons/Design/Layers.svg', // or can be 'flaticon-home' or any flaticon-*
            'page' => '/zone',
            'new-tab' => false,
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

        /* Farmer's route */
        [
            'title' => '11. Farmer',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Farmer Lists",
                    'bullet' => 'dot',
                    'page' => 'farmers'
                ],
                [
                    'title' => "B. Add New Farmer",
                    'bullet' => 'dot',
                    'page' => 'farmers/create'
                ],
            ]
        ],
        /* Supplier's route */
        [
            'title' => '12. Supplier',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Supplier\'s List',
                    'bullet' => 'dot',
                    'page' => 'supplier'
                ],
                [
                    'title'  => "B. Add New Supplier",
                    'bullet' => 'dot',
                    'page'   => 'supplier/create'
                ],
            ]
        ],
        /* Packing routes */
        [
            'title' => '13. Packaging',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. List Units",
                    'bullet' => 'dot',
                    'page' => 'unit'
                ],
                [
                    'title' => "B. Packaging Challan",
                    'bullet' => 'dot',
                    'page' => 'packaging'
                ],
            ],
        ],
        /* Accounts sections */
        [
            'title' => '14. Accounts',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Balance",
                    'bullet' => 'dot',
                    'page' => 'balance'
                ],
                [
                    'title' => "B. Purchase Management",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "i. List PM",
                            'bullet' => 'dot',
                            'page' => 'purchase_management'
                        ],
                        [
                            'title' => "ii. Add PM",
                            'bullet' => 'dot',
                            'page' => 'purchase_management/create'
                        ],
                    ]
                ],
                [
                    'title' => "C. Expense",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "i. List expense",
                            'bullet' => 'dot',
                            'page' => 'expense'
                        ],
                        [
                            'title' => "ii. Add expense",
                            'bullet' => 'dot',
                            'page' => 'expense/create'
                        ],
                    ],
                ],
                [
                    'title' => "D. Pay Order",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "i. List Pay Order",
                            'bullet' => 'dot',
                            'page' => 'pay-order'
                        ],
                        [
                            'title' => "ii. Add Pay Order",
                            'bullet' => 'dot',
                            'page' => 'pay-order/create'
                        ],
                    ]
                ],
                /* Deposit menu */
                [
                    'title' => "E. Deposit",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "i. List Deposit",
                            'bullet' => 'dot',
                            'page' => 'deposit'
                        ],
                        [
                            'title' => "ii. Add Deposit",
                            'bullet' => 'dot',
                            'page' => 'deposit/create'
                        ],
                    ]
                ],
                /* Withdraw menu */
                [
                    'title' => "F. Withdraw",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "i. List Withdraw",
                            'bullet' => 'dot',
                            'page' => 'withdraw'
                        ],
                        [
                            'title' => "ii. Withdraw Now",
                            'bullet' => 'dot',
                            'page' => 'withdraw/create'
                        ],
                    ]
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
        /* Settings */
        [
            'title' => '16. Settings',
            'icon' => 'media/svg/icons/General/Settings-1.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Task Schedule",
                    'bullet' => 'dot',
                    'page' => 'setting/task'
                ],
                [
                    'title' => "B. Set OTP and Access",
                    'bullet' => 'dot',
                    'page' => 'user/set/otp'
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
                    'title' => "A. Product's reports",
                    'bullet' => 'dot',
                    'page' => 'delivery/rejected-products'
                ],
                [
                    'title' => "B. Unit and Purchase",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-purchase'
                ],
                [
                    'title' => "C. Report List Truck",
                    'bullet' => 'dot',
                    'page' => 'reports/report-list-truck'
                ],
            ]
        ],
    ],

];
