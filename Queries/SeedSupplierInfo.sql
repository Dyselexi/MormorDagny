INSERT INTO Suppliers(
    Name
)VALUES(
    'Greta & Göstas mjölfabrik'
),(
    'Jäst med mera'
),(
    'Sockerbiten AB'
),(
    'Ingredienser för allt'
);

INSERT INTO ContactPersons(
    Id,
    Name,
    Email,
    Position
)VALUES(
    1,
    'Jimmy Hoffa',
    'Jimmy@GGmjolfabrik.se',
    'Försäljningsansvarig'
),(
    2,
    'Gunilla Gräddnos',
    'gunilla@jastmm.se',
    'Key Account Manager'
),(
    3,
    'Roland Carlsson',
    'rolle@sockerbiten.se',
    'försäljning'
),(
    4,
    'Tjejen på russinpaketet',
    'russinpaketet@IFA.se',
    'VD'
);

INSERT INTO SupplierContactPersons(
    SupplierId,
    ContactPersonId
)VALUES(
    1,
    1
),(
    2,
    2
),(
    3,
    3
),(
    4,
    4
);

INSERT INTO PhoneNumbers(
    Id,
    PhoneNumber
)VALUES(
    1,
    '0708929293'
),(
    2,
    '0738281934'
),(
    3,
    '0573-95729'
),(
    4,
    '0782-482945'
);

INSERT INTO ContactPersonPhones(
    ContactPersonId,
    PhoneId
)VALUES(
    1,
    1
),(
    2,
    2
),(
    3,
    3
),(
    4,
    4
);

INSERT INTO Cities(
    Id,
    City
)VALUES(
    1,
    'Malmö'
),(
    2,
    'Karlshamn'
),(
    3,
    'Kalmar'
),(
    4,
    'Luleå'
);

INSERT INTO PostalCodes(
    Id,
    PostalCode,
    CityId
)VALUES(
    1,
    '23455',
    1
),(
    2,
    '37185',
    2
),(
    3,
    '39359',
    3
),(
    4,
    '87294',
    4
);

INSERT INTO Addresses(
    Id,
    Addressline,
    PostalCodeId
)VALUES(
    1,
    'Mjölvägen 12',
    1
),(
    2,
    'Dragörkajen',
    2
),(
    3,
    'Resedavägen 10',
    3
),(
    4,
    'Skogsbrynet 12',
    4
);

INSERT INTO AddressTypes (
    Id, 
    Value
    ) VALUES(
    1,
    'Fakturaadress'
 ),(
    2,
    'Leveransadress'
);

INSERT INTO SuppliersAddresses (
    SupplierId, 
    AddressId, 
    AddressTypeId
    ) VALUES(
        1, 
        1, 
        1
    ),(
        2, 
        2, 
        1
    ),(
        3, 
        3, 
        1
    ),(
        4, 
        4, 
        1
    );

