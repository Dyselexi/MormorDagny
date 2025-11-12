
DROP TABLE IF EXISTS Recipes;
DROP TABLE IF EXISTS RecipesIngredients;
DROP TABLE IF EXISTS ProductCategories;
DROP TABLE IF EXISTS PurchaseOrderItems;
DROP TABLE IF EXISTS PurchaseOrders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS SupplierProducts;
DROP TABLE IF EXISTS AddressTypes;
DROP TABLE IF EXISTS SuppliersAddresses;
DROP TABLE IF EXISTS Addresses;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS Cities;
DROP TABLE IF EXISTS postalcodes;
DROP TABLE IF EXISTS phonenumbers;
DROP TABLE IF EXISTS SuppliersPhones;
DROP TABLE IF EXISTS Ingredients;
DROP TABLE IF EXISTS InStock;
DROP TABLE IF EXISTS Units;

CREATE TABLE InStock(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductId INTEGER,
    Quantity INTEGER NOT NULL,
    UnitId INTEGER NOT NULL,
    FOREIGN KEY(ProductId) REFERENCES Products(Id),
    FOREIGN KEY(UnitId) REFERENCES Units(Id)
);

CREATE TABLE  PurchaseOrders(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierId INTEGER,
    OrderDate DATETIME NOT NULL,
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id)
);


CREATE TABLE PurchaseOrderItems(
    PurchaseOrderId INTEGER,
    ProductId INTEGER,
    Quantity INTEGER NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(PurchaseOrderId, ProductId),
    FOREIGN KEY(PurchaseOrderId) REFERENCES PurchaseOrders(Id),
    FOREIGN KEY(ProductId) REFERENCES Products(Id)
);


CREATE TABLE Suppliers(
    Id INTEGER Primary Key AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL UNIQUE
    );

CREATE TABLE Cities(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    City VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE PostalCodes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PostalCode VARCHAR(8) NOT NULL UNIQUE,
    CityId INTEGER NOT NULL,
    FOREIGN KEY(CityId) REFERENCES Cities(Id)
);

CREATE TABLE Addresses(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    AddressLine VARCHAR(40) NOT NULL,
    PostalCodeId INTEGER NOT NULL,
    FOREIGN KEY (PostalCodeId) REFERENCES PostalCodes(Id)
);

CREATE TABLE PhoneNumbers(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PhoneNumber VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE SuppliersPhones(
    SupplierId INTEGER,
    PhoneId INTEGER,
    PRIMARY KEY(SupplierId, PhoneId),
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id),
    FOREIGN KEY(PhoneId) REFERENCES PhoneNumbers(Id)
);

CREATE TABLE SuppliersAddresses(
    SupplierId INTEGER,
    AddressId INTEGER,
    AddressTypeId INTEGER,
    PRIMARY KEY(SupplierId,AddressId, AddressTypeId),
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id),
    FOREIGN KEY(AddressId) REFERENCES Addresses(Id),
    FOREIGN KEY(AddressTypeId) REFERENCES AddressTypes(Id)
);
CREATE TABLE ContactPersons (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Position VARCHAR(50)
);

CREATE TABLE SupplierContactPersons (
    SupplierId INTEGER NOT NULL,
    ContactPersonId INTEGER NOT NULL,
    PRIMARY KEY(SupplierId, ContactPersonId),
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id),
    FOREIGN KEY(ContactPersonId) REFERENCES ContactPersons(Id)
);
CREATE TABLE ContactPersonPhones (
    ContactPersonId INTEGER NOT NULL,
    PhoneId INTEGER NOT NULL,
    PRIMARY KEY(ContactPersonId, PhoneId),
    FOREIGN KEY(ContactPersonId) REFERENCES ContactPersons(Id),
    FOREIGN KEY(PhoneId) REFERENCES PhoneNumbers(Id)
);


CREATE TABLE AddressTypes(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Value VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE Ingredients(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE SupplierProducts(
    SupplierId INTEGER,
    ProductId INTEGER,
    ArtNumber VARCHAR(30) NOT NULL,
    PurchasePrice DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(SupplierId, ProductId),
    FOREIGN KEY(SupplierId) REFERENCES Suppliers(Id),
    FOREIGN KEY(ProductId) REFERENCES Products(Id)
);

CREATE TABLE Units(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(20) NOT NULL UNIQUE
);


CREATE TABLE Products(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    UnitId INTEGER NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CategoryId INTEGER,
    FOREIGN KEY(CategoryId) REFERENCES ProductCategories(Id),
    FOREIGN KEY (UnitId) REFERENCES Units(Id)
);

CREATE TABLE ProductCategories(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(50) NOT NULL UNIQUE
);

 
 CREATE TABLE Recipes(
     Id INTEGER PRIMARY KEY AUTOINCREMENT,
     Name VARCHAR(100) NOT NULL,
     Description VARCHAR(100)
 );


 CREATE TABLE RecipesIngredients(
    RecipeId INTEGER,
    IngredientId INTEGER,
    Quantity VARCHAR(50),
    UnitId INTEGER NOT NULL,
    PRIMARY KEY(RecipeId, IngredientId),
    FOREIGN KEY(RecipeId) REFERENCES Recipes(Id),
    FOREIGN KEY(IngredientId) REFERENCES Ingredients(Id),
    FOREIGN KEY(UnitId) REFERENCES Units(Id)
);

