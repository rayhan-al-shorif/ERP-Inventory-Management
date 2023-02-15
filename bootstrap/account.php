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
        /* Accounts sections */
        [
            'title' => 'Accounts',
            'icon' => 'media/svg/icons/Code/Compiling.svg',
            'bullet' => 'line',
            'root' => true,
            'submenu' => [
                [
                    'title' => "Balance",
                    'bullet' => 'dot',
                    'page' => 'balance'
                ],
                [
                    'title' => "Purchase Management",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "List PM",
                            'bullet' => 'dot',
                            'page' => 'purchase_management'
                        ],
                        [
                            'title' => "Add PM",
                            'bullet' => 'dot',
                            'page' => 'purchase_management/create'
                        ],
                    ]

                ],
                [
                    'title' => "Expense",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "List expense",
                            'bullet' => 'dot',
                            'page' => 'expense'
                        ],
                        [
                            'title' => "Add expense",
                            'bullet' => 'dot',
                            'page' => 'expense/create'
                        ],
                    ]

                ],
                [
                    'title' => "Pay Order",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "List Pay Order",
                            'bullet' => 'dot',
                            'page' => 'pay-order'
                        ],
                        [
                            'title' => "Add Pay Order",
                            'bullet' => 'dot',
                            'page' => 'pay-order/create'
                        ],
                    ]
                ],
                [
                    'title' => "Deposit",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "List Deposit",
                            'bullet' => 'dot',
                            'page' => 'deposit'
                        ],
                        [
                            'title' => "Add Pay Order",
                            'bullet' => 'dot',
                            'page' => 'deposit/create'
                        ],
                    ]
                ],
                [
                    'title' => "Withdraw",
                    'bullet' => 'dot',
                    'submenu' => [
                        [
                            'title' => "List Withdraw",
                            'bullet' => 'dot',
                            'page' => 'withdraw'
                        ],
                        [
                            'title' => "Withdraw Now",
                            'bullet' => 'dot',
                            'page' => 'withdraw/create'
                        ],
                    ]
                ],

            ]
        ],
    ]


];
