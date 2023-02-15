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
                    'title' => "Zone's Requirement",
                    'bullet' => 'dot',
                    'page' => '@my/todays/zones-requirements'
                ],
                [
                    'title' => "Today's Requirements",
                    'bullet' => 'dot',
                    'page' => '@my/todays/overall-requirements'
                ],
                [
                    'title' => 'Fullfilled-Requirements',
                    'bullet' => 'dot',
                    'page' => '/@my/todays-fullfill-requirements'
                ],
            ]
        ],
        [
            'title' => 'Purchase',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'T Requirement',
                    'bullet' => 'dot',
                    'page' => '#'
                ],
                [
                    'title' => 'Assign Purchase',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
                [
                    'title' => 'Add Purchase',
                    'bullet' => 'dot',
                    'page' => 'sales'
                ],
            ]
        ],
        [
            'title' => 'Delivery',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Pending Delivery',
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => 'Confirmed Delivery',
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => 'List Truck',
                    'bullet' => 'dot',
                    'page' => 'truck'
                ],
                [
                    'title' => 'Delivery Tracking',
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Delivery Challan",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Delivery Name",
                    'bullet' => 'dot',
                    'page' => ''
                ],

            ]
        ],
        [
            'title' => 'Pricing',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => 'Todays Pricing',
                    'bullet' => 'dot',
                    'page' => 'today-pricing'
                ],
                [
                    'title' => 'Compare Pricing',
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => 'Assign Zone',
                    'bullet' => 'dot',
                    'page' => 'zone'
                ]


            ]
        ],

        // Control & Account Department Start
        [
            'section' => 'Control & Account Department',
        ],
        [
            'title' => 'Packaging',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "List Units",
                    'bullet' => 'dot',
                    'page' => 'unit'
                ],
                [
                    'title' => "Packaging Challan",
                    'bullet' => 'dot',
                    'page' => 'packaging'
                ],
            ],
            [
                'title' => "Packing Sticker",
                'bullet' => 'dot',
                'page' => ''
            ],
            [
                'title' => "Barcode Page",
                'bullet' => 'dot',
                'page' => ''
            ],

        ],
        [
            'title' => 'Accounts',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "Bank Account Balance",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Salary Management",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Expense",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Purchase Management",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Collection Management",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Supplier Management",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Due Management",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Pay Order",
                    'bullet' => 'dot',
                    'page' => ''
                ],

            ]
        ],


        [
            'title' => 'Reports',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "Purchase Report",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Bank Report",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Expanse Report",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Attendance Report",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Delivery Report",
                    'bullet' => 'dot',
                    'page' => ''
                ],
            ]
        ],

        // Control & Account Department End

        //User Begin
        [
            'section' => 'HR Department',
        ],
        [
            'title' => 'Employee',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "List Employee",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Attendance",
                    'bullet' => 'dot',
                    'page' => ''
                ],


            ]
        ],
        [
            'title' => 'Social',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "Inbox",
                    'bullet' => 'dot',
                    'page' => ''
                ],
                [
                    'title' => "Alert",
                    'bullet' => 'dot',
                    'page' => ''
                ],


            ]
        ],
        [
            'title' => 'Api',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'page' => 'api'
        ],
    ],
];
