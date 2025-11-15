
-- select för att kunna få fram all leverantörsinfo
SELECT
    Suppliers.Id,
    Suppliers.Name AS Leverantör,
    ContactPersons.Name AS Kontaktperson,
    ContactPersons.Email,
    ContactPersons.Position,
    PhoneNumbers.PhoneNumber,
    Addresses.AddressLine,
    PostalCodes.PostalCode,
    Cities.city
FROM Suppliers
INNER JOIN SupplierContactPersons ON Suppliers.Id = SupplierContactPersons.SupplierId
INNER JOIN ContactPersons ON SupplierContactPersons.ContactPersonId = ContactPersons.Id
INNER JOIN ContactPersonPhones ON ContactPersons.Id = ContactPersonPhones.ContactPersonId
INNER JOIN PhoneNumbers ON ContactPersonPhones.PhoneId = PhoneNumbers.Id
INNER JOIN SuppliersAddresses ON Suppliers.Id = SuppliersAddresses.SupplierId
INNER JOIN Addresses ON SuppliersAddresses.AddressId = Addresses.Id
INNER JOIN PostalCodes ON Addresses.PostalCodeId = PostalCodes.Id
INNER JOIN Cities ON PostalCodes.CityId = Cities.Id;

--VISAR LEVERANTÖRER SAMT PRODUKTER, ARTNR OCH INKÖPSPRIS PER ENHET.
SELECT
    Suppliers.Name AS Leverantör,
    Products.Name AS Produktnamn,
    SupplierProducts.ArtNumber,
    SupplierProducts.PurchasePrice AS PrisPerEnhet,
    Units.Name AS Enhet
FROM SupplierProducts
INNER JOIN Suppliers ON SupplierProducts.SupplierId = Suppliers.Id
INNER JOIN Products ON SupplierProducts.ProductId = Products.Id
INNER JOIN Units ON Products.UnitId = Units.Id;


--VISAR LEVERANTÖR, PRODUKT, INKÖPSORDER ANTAL, INKÖPSORDERID OCH NUVARANDE LAGER.
--Anledning till Left join är att även få med produkter som inte finns i lager.
SELECT
    Suppliers.Name AS Leverantör,
    Products.Name AS Produkt,
    SUM(PurchaseOrderItems.Quantity) AS Totaltpåväg,
    PurchaseOrderId AS InköpsOrderId,
    InStock.Quantity AS LagerAntal
FROM PurchaseOrderItems
INNER JOIN PurchaseOrders ON PurchaseOrderItems.PurchaseOrderId = PurchaseOrders.Id 
INNER JOIN Suppliers ON PurchaseOrders.SupplierId = Suppliers.Id
INNER JOIN Products ON PurchaseOrderItems.ProductId = Products.Id
LEFT JOIN InStock ON Products.Id = InStock.ProductId
GROUP BY Suppliers.Name, Products.Name, InStock.Quantity;

-- VISAR VILKA INGREDIENSER SOM RECEPTEN BEHÖVS
SELECT
    Recipes.Name AS Recept,
    Products.Name AS Ingrediens,
    RecipesIngredients.Quantity,
    Units.Name AS Enhet
FROM RecipesIngredients
INNER JOIN Products ON RecipesIngredients.IngredientId = Products.Id
INNER JOIN Recipes ON RecipesIngredients.RecipeId = Recipes.Id
INNER JOIN Units ON RecipesIngredients.UnitId = Units.Id;


