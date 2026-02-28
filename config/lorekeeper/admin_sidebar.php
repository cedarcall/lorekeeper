<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Admin Sidebar Links
    |--------------------------------------------------------------------------
    |
    | Admin panel sidebar links.
    | Add links here to have them show up in the admin panel.
    | Users that do not have the listed power will not be able to
    | view the links in that section.
    |
    */

    'Admin' => [
        'power' => 'admin',
        'links' => [
            [
                'name' => 'User Ranks',
                'url' => 'admin/users/ranks'
            ]
        ]
    ],
    'Site' => [
        'power' => 'edit_pages',
        'links' => [
            [
                'name' => 'News',
                'url' => 'admin/news'
            ],
            [
                'name' => 'Announcements',
                'url' => 'admin/announcements'
            ],
            [
                'name' => 'Contracts',
                'url' => 'admin/contracts'
            ],
            [
                'name' => 'Sales',
                'url' => 'admin/sales'
            ],
            [
                'name' => 'World Info',
                'url' => 'admin/world-info'
            ]
        ]
    ],
    'Exploration' => [
        'power' => 'edit_pages',
        'links' => [
            [
                'name' => 'Galaxies',
                'url' => 'admin/galaxies'
            ],
            [
                'name' => 'Planets',
                'url' => 'admin/planets'
            ],
            [
                'name' => 'Featured Planets',
                'url' => 'admin/featured-planets'
            ]
        ]
    ],
    'Users' => [
        'power' => 'edit_user_info',
        'links' => [
            [
                'name' => 'User Index',
                'url' => 'admin/users'
            ]
        ]
    ],
    'Grants' => [
        'power' => 'edit_inventories',
        'links' => [
            [
                'name' => 'Currency Grants',
                'url' => 'admin/grants/user-currency'
            ],
            [
                'name' => 'Item Grants',
                'url' => 'admin/grants/items'
            ],
            [
                'name' => 'Award Grants',
                'url' => 'admin/grants/awards'
            ],
            [
                'name' => 'Recipe Grants',
                'url' => 'admin/grants/recipes'
            ],
            [
                'name' => 'Character Reputation',
                'url' => 'admin/grants/character-reputation'
            ]
        ]
    ],
    'Masterlist' => [
        'power' => 'manage_characters',
        'links' => [
            [
                'name' => 'Create Character',
                'url' => 'admin/masterlist/create-character'
            ],
            [
                'name' => 'Create MYO Slot',
                'url' => 'admin/masterlist/create-myo'
            ],
            [
                'name' => 'Character Transfers',
                'url' => 'admin/masterlist/transfers/incoming'
            ],
            [
                'name' => 'Character Trades',
                'url' => 'admin/masterlist/trades/incoming'
            ],
            [
                'name' => 'Design Updates',
                'url' => 'admin/design-approvals/pending'
            ],
            [
                'name' => 'MYO Approvals',
                'url' => 'admin/myo-approvals/pending'
            ]
        ]
    ],
    'Data' => [
        'power' => 'edit_data',
        'links' => [
            [
                'name' => 'Galleries',
                'url' => 'admin/data/galleries'
            ],
            [
                'name' => 'Award Categories',
                'url' => 'admin/data/award-categories'
            ],
            [
                'name' => 'Awards',
                'url' => 'admin/data/awards'
            ],
            [
                'name' => 'Character Categories',
                'url' => 'admin/data/character-categories'
            ],
            [
                'name' => 'Rarities',
                'url' => 'admin/data/rarities'
            ],
            [
                'name' => 'Subtypes',
                'url' => 'admin/data/subtypes'
            ],
            [
                'name' => 'Traits',
                'url' => 'admin/data/traits'
            ],
            [
                'name' => 'Shops',
                'url' => 'admin/data/shops'
            ],
            [
                'name' => 'Dailies',
                'url' => 'admin/data/dailies'
            ],
            [
                'name' => 'Currencies',
                'url' => 'admin/data/currencies'
            ],
            [
                'name' => 'Loot Tables',
                'url' => 'admin/data/loot-tables'
            ],
            [
                'name' => 'Items',
                'url' => 'admin/data/items'
            ],
            [
                'name' => 'Recipes',
                'url' => 'admin/data/recipes'
            ],
            [
                'name' => 'Forums',
                'url' => 'admin/forums'
            ]
        ]
    ],
    'Raffles' => [
        'power' => 'manage_raffles',
        'links' => [
            [
                'name' => 'Raffles',
                'url' => 'admin/raffles'
            ]
        ]
    ],
    'Settings' => [
        'power' => 'edit_site_settings',
        'links' => [
            [
                'name' => 'Site Settings',
                'url' => 'admin/settings'
            ],
            [
                'name' => 'Site Pages',
                'url' => 'admin/pages'
            ],
            [
                'name' => 'Site Images',
                'url' => 'admin/images'
            ],
            [
                'name' => 'File Manager',
                'url' => 'admin/files'
            ],
            [
                'name' => 'Theme Manager',
                'url' => 'admin/themes'
            ]
        ]
    ]
];
