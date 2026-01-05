-- To make debug and examples easier, the ID's reflect the graph structure
-- of categories: the number of digits represents the current node's depth
-- level, and the ID's prefix is the parent's ID.
-- For categories with multiple parents, this is only true for the main parent.


USE sales_xmp;

INSERT INTO category (id, name) VALUES
      (2,    'Electronics')

    , (21,   'Computers')
    , (211,  'Laptops')
    , (212,  'Gaming Computers')
    , (213,  'Peripherals')

    , (22,    'Audio & Video')
    , (221,   'TV')
    , (222,   'Wi-Fi')

    , (3,     'Office')

    , (31,    'Office Electronics')
    , (311,   'Printers')
    , (312,   'Scanners')
    , (313,   'Security Cameras')

    , (32,    'Office Furniture')
    , (321,   'Office Tables')
    , (322,   'Office Chairs')
;

INSERT INTO category_arc (to_category, from_category) VALUES
      (21,    2)
    , (211,   21)
    , (211,   31)
    , (212,   21)
    , (213,   21)

    , (22,    2)
    , (221,   22)
    , (222,   22)

    , (31,    3)
    , (311,   31)
    , (311,   213)
    , (312,   31)
    , (312,   213)
    , (313,   31)

    , (32,    3)
    , (321,   32)
    , (322,   32)
;

