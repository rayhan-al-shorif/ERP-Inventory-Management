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
                    'page' => 'previous-orders/api/index'
                ],
                [
                    'title' => 'D. Short Management',
                    'bullet' => 'dot',
                    'page' => 'short-management'
                ],
                [
                    'title' => 'E. Data Entry',
                    'bullet' => 'dot',
                    'page' => 'old-order/create'
                ],
                [
                    'title' => 'F. Sales Unit List',
                    'bullet' => 'dot',
                    'page' => 'sales-unit-list'
                ],
                [
                    'title' => 'G. Damage And Missing',
                    'bullet' => 'dot',
                    'root' => true,
                    'submenu' => [
                        [
                            'title' => 'i. Damage And Missing',
                            'bullet' => 'dot',
                            'page' => 'order/damage-and-missing'
                        ],
                        [
                            'title' => 'ii. Today\'s List',
                            'bullet' => 'dot',
                            'page' => 'order/damage-and-missing/detailsList'
                        ],
                        [
                            'title' => 'iii. Previous List',
                            'bullet' => 'dot',
                            'page' => 'order/damage-and-missing/previous-detailsList'
                        ],
                    ]
                    
                ],
                [
                    'title' => 'H. Order List Data',
                    'bullet' => 'dot',
                    'root' => true,
                    'submenu' => [
                        [
                            'title' => 'i. Today\'s List',
                            'bullet' => 'dot',
                            'page' => 'today-order-list-data'
                        ],
                        [
                            'title' => 'ii. Previous List',
                            'bullet' => 'dot',
                            'page' => 'order-list-data'
                        ],
                        [
                            'title' => 'iii. Previous Up Test',
                            'bullet' => 'dot',
                            'page' => 'order-list-data-up'
                        ],
                    ]
                    
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
                    'title' => 'B. Previous List',
                    'bullet' => 'dot',
                    'page' => 'previous-purchases'
                ],
                [
                    'title' => 'C. Fixing Purchase Price',
                    'bullet' => 'dot',
                    'page' => 'fixing-purchase-price'
                ],
                [
                    'title' => 'D. Add Purchaser',
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
                 'title' => 'B. Products Status',
                 'bullet' => 'dot',
                 'page' => 'product-status'
                ],
                [
                    'title' => 'C. Products Fixed Unit ',
                    'bullet' => 'dot',
                    'page' => 'product-set-order-units'
                ],
                [
                    'title' => 'D. Catagories List',
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
                 [
                    'title' => 'F. Previous Delivery Invoice',
                    'bullet' => 'dot',
                    'page' => 'delivery/previous-delivery-invoices'
                ],
                // [
                //     'title' => 'G. Edit Invoice',
                //     'bullet' => 'dot',
                //     'page' => 'delivery/edit-invoices'
                // ],
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
                    'page' => 'fixed-price'
                ],
                [
                    'title' => 'C. Customer Type Manual',
                    'bullet' => 'dot',
                    'page' => 'customer-type-manual'
                ],
                [
                    'title' => 'D. Customer-type',
                    'bullet' => 'dot',
                    'page' => 'customer/types/select'
                ],
            ]
        ],
        /* Customer-payment */
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
        /* Zone */
        [
            'title' => '9. Zone',
            'root' => true,
            'icon' => 'media/svg/icons/Design/Layers.svg', // or can be 'flaticon-home' or any flaticon-*
            'page' => '/zone',
            'new-tab' => false,
        ],
        /* Wirehouse */
        [
            'title' => '10. Warehouse',
            'root' => true,
            'icon' => 'media/svg/icons/Design/Layers.svg', // or can be 'flaticon-home' or any flaticon-*
            'page' => '/warehouse',
            'new-tab' => false,
        ],
        /* Pandamat sections */
  [
   'title' => '11. Pandamart',
   'icon' => 'media/svg/icons/Code/Compiling.svg',
   'bullet' => 'line',
   'root' => true,
   'submenu' => [
    [
     'title' => 'A. Add New Orders',
     'bullet' => 'dot',
     'page' => '/pandamart'
    ],
    [
     'title' => 'B. SKU List',
     'bullet' => 'dot',
     'page' => '/pandamart/sku'
    ],
   ]
  ],
        // Control & Account Department Start
        [
            'section' => 'Control & Account Department',
        ],
        /* Customer's route */
        [
            'title' => '11. Customer',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Customer Lists",
                    'bullet' => 'dot',
                    'page' => 'customer-test'
                ],
                [
                    'title' => "B. Add New Customer",
                    'bullet' => 'dot',
                    'page' => 'customer/create'
                ],
                // [
                //     'title' => "C. Customer API Lists",
                //     'bullet' => 'dot',
                //     'page' => 'customer-test'
                // ],
            ]
        ],

        /* Farmer's route */
        [
            'title' => '12. Farmer',
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
            'title' => '13. Supplier',
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
        /* Supply's route */
        [
            'title' => '14. Supply',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'A. Supplies List',
                    'bullet' => 'dot',
                    'page' => 'supply/list'
                ],
                [
                    'title'  => "B. New Supply",
                    'bullet' => 'dot',
                    'page'   => 'supply/create'
                ],
            ]
        ],
        /* Packing routes */
        [
            'title' => '15. Packaging',
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
        // [
        //     'title' => '16. Accounts',
        //     'icon' => 'media/svg/icons/Code/Compiling.svg',
        //     'bullet' => 'line',
        //     'root' => true,
        //     'submenu' => [
        //         [
        //             'title' => "A. Balance",
        //             'bullet' => 'dot',
        //             'page' => 'balance'
        //         ],
        //         [
        //             'title' => "B. Purchase Management",
        //             'bullet' => 'dot',
        //             'submenu' => [
        //                 [
        //                     'title' => "i. List PM",
        //                     'bullet' => 'dot',
        //                     'page' => 'purchase_management'
        //                 ],
        //                 [
        //                     'title' => "ii. Add PM",
        //                     'bullet' => 'dot',
        //                     'page' => 'purchase_management/create'
        //                 ],
        //             ]
        //         ],
        //         [
        //             'title' => "C. Expense",
        //             'bullet' => 'dot',
        //             'submenu' => [
        //                 [
        //                     'title' => "i. List expense",
        //                     'bullet' => 'dot',
        //                     'page' => 'expense'
        //                 ],
        //                 [
        //                     'title' => "ii. Add expense",
        //                     'bullet' => 'dot',
        //                     'page' => 'expense/create'
        //                 ],
        //             ],
        //         ],
        //         [
        //             'title' => "D. Pay Order",
        //             'bullet' => 'dot',
        //             'submenu' => [
        //                 [
        //                     'title' => "i. List Pay Order",
        //                     'bullet' => 'dot',
        //                     'page' => 'pay-order'
        //                 ],
        //                 [
        //                     'title' => "ii. Add Pay Order",
        //                     'bullet' => 'dot',
        //                     'page' => 'pay-order/create'
        //                 ],
        //             ]
        //         ],
        //         /* Deposit menu */
        //         [
        //             'title' => "E. Deposit",
        //             'bullet' => 'dot',
        //             'submenu' => [
        //                 [
        //                     'title' => "i. List Deposit",
        //                     'bullet' => 'dot',
        //                     'page' => 'deposit'
        //                 ],
        //                 [
        //                     'title' => "ii. Add Deposit",
        //                     'bullet' => 'dot',
        //                     'page' => 'deposit/create'
        //                 ],
        //             ]
        //         ],
        //         /* Withdraw menu */
        //         [
        //             'title' => "F. Withdraw",
        //             'bullet' => 'dot',
        //             'submenu' => [
        //                 [
        //                     'title' => "i. List Withdraw",
        //                     'bullet' => 'dot',
        //                     'page' => 'withdraw'
        //                 ],
        //                 [
        //                     'title' => "ii. Withdraw Now",
        //                     'bullet' => 'dot',
        //                     'page' => 'withdraw/create'
        //                 ],
        //             ]
        //         ],
        //     ]
        // ],
        /* Employee sections */
        [
            'title' => '16. Employee',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "A. Employees Profile",
                    'bullet' => 'dot',
                    'page' => 'employee'
                ],
                
            ]
        ],
        //User Begin
        [
            'section' => 'HR Department',
        ],
        [
            'title' => '17. Users',
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
            'title' => '18. Settings',
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
            'title' => '19. Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                // [
                //     'title' => "A. Product's reports",
                //     'bullet' => 'dot',
                //     'page' => 'delivery/rejected-products'
                // ],
                [
                    'title' => "A. Unit and Purchase",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-purchase'
                ],
                [
                    'title' => "B. Report List Truck",
                    'bullet' => 'dot',
                    'page' => 'reports/report-list-truck'
                ],
                [
                    'title' => "C. Reports Gross Profit",
                    'bullet' => 'dot',
                    'page' => 'reports/gross-profit'
                ],
                [
                    'title' => "D. Units and Sales",
                    'bullet' => 'dot',
                    'page' => 'reports/unit-and-sales'
                ],
                 [
                    'title' => "E. Pinik Order",
                    'bullet' => 'dot',
                    'page' => 'reports/pinik-order'
                ],
            ]
        ],
    ],

];
