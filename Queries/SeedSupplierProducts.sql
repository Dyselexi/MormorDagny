INSERT INTO Units(
    Id,
    Name
)VALUES(
    1,
    'kg'
),(
    2,
    'hg'
),(
    3,
    'g'
),(
    4,
    'L'
),(
    5,
    'DL'
),(
    6,
    'MSK'
),(
    7,
    'st'
);

INSERT INTO Products(
    Name,
    Description,
    UnitId,
    Price,
    CategoryId
    ) VALUES
    (
        'Vetemjöl',
        'Finaste vetemjölet för alla bakverk.',
        1,
        15.50,
        2
    ),
    (
        'Rågmjöl',
        'Näringsrikt rågmjöl för hälsosamt bröd.',
        1,
        18.00,
        2
    ),
    (
        'Torrjäst',
        'Snabbverkande torrjäst för smidigt bakande.',
        1,
        9.25,
        3
    ),
    (
        'Farinsocker',
        'Mörkt farinsocker med rik smak.',
        1,
        14.00,
        2
    ),
    (
        'Pärlsocker',
        'Krispigt pärlsocker för dekoration.',
        1,
        11.50,
        2
    ),
    (
        'Havregryn',
        'För frukost och bakning.',
        1,
        20.00,
        2
    ),
    (   
        'Kanel',
        'Aromatisk kanel för bakverk och drycker.',
        1,
        25.00,
        2
    ),
    (
        'Bakpulver',
        'För att få dina bakverk att lyfta.',
        1,
        7.50,
        2
    ),        
    (
        'Vaniljsocker',
        'För en härlig vaniljsmak i bakverk.',
        1,
        10.00,
        2
    ),
    (
        'Smör',
        'Kvalitets smör för bakning och matlagning.',
        1,
        30.00,
        3
    ),
    (
        'Grädde',
        'Färsk grädde för bakning och matlagning.',
        4,
        22.00,
        1
    ),
    (
        'Mjölk',
        'Färsk mjölk för bakning och drycker.',
        4,
        15.00,
        1
    ), 
    (
        'Jäst',
        'Högkvalitativ jäst för perfekt jäsning.',
        1,
        8.75,
        3
    ),
    (
        'Strösocker',
        'Ren strösocker för söta bakverk och drycker.',
        1,
        12.00,
        2
    ),
    (
        'Ägg',
        'Färska ägg för bakning och matlagning.',
        7,
        20.00,
        1
    ),
    (
        'Kakao',
        'Rik kakao för bruna bakverk.',
        1,
        28.00,
        2
    );

INSERT INTO SupplierProducts(
    SupplierId,
    ProductId,
    ArtNumber,
    PurchasePrice
    ) VALUES
    (
        1,
        1,
        'VTMJL-001',
        12.00
    ),
    (
        1,
        3,
        'TRRJST-003',
        7.00
    ),
    (
        1,
        10,
        'SMOR-010',
        25.00
    ),
    (
        2,
        2,
        'RGMJL-002',
        14.00
    ),
    (
        2,
        4,
        'FRNSKR-004',
        11.00
    ),
    (
        2,
        12,
        'MJOLK-012',
        12.00
    ),
    (
        3,
        5,
        'PRLSKR-005',
        9.00
    ),
    (
        3,
        6,
        'HVRGRYN-006',
        16.00
    ),
    (
        3,
        11,
        'GRADDE-011',
        18.00
    ),
    (
        4,
        7,
        'KANEL-007',
        20.00
    ),
    (
        4,
        8,
        'BKPLVR-008',
        6.00
    ),
    (
        4,
        9,
        'VANLSKR-009',
        8.00
    ),
    (
        4,
        13,
        'JAST-013',
        7.00
    );