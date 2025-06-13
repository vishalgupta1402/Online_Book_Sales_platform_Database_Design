CREATE DATABASE online_book_publishing_sales_platform;

USE online_book_publishing_sales_platform;

CREATE TABLE Publisher(
PublisherID INT PRIMARY KEY,
Name VARCHAR(100)NOT NULL ,
ContactDetalis VARCHAR(255)
);

CREATE TABLE Book(
BookID INT PRIMARY KEY ,
Title VARCHAR(200) NOT NULL ,
ISBN VARCHAR(20) NOT NULL ,
Edition INT NOT NULL ,
PublicationYear INT ,
Price DECIMAL(10,2),
PublisherID INT ,
FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

CREATE TABLE Genre (
GenreID INT PRIMARY KEY ,
GenreName VARCHAR(100) NOT NULL );

CREATE TABLE BookGenre(
BookID INT ,
GenreID INT ,
PRIMARY KEY (BookID,GenreID),
FOREIGN KEY (BookID) REFERENCES Book(BooKID),
FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) );

CREATE TABLE Author(
AuthorID INT PRIMARY KEY ,
Name VARCHAR(100) NOT NULL ,
Biography TEXT );

CREATE TABLE BookAuthor (
BookID INT ,
AuthorID INT ,
PRIMARY KEY (BookID,AuthorID),
FOREIGN KEY (BookID) REFERENCES Book(BooKID),
FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID) );

create table Customer(
CustomerID int primary key,
Name varchar(100) not null
);

CREATE TABLE ADDRESS (
    AddressID INT PRIMARY KEY,
    CustomerID INT,
    STREET VARCHAR(100),
    CITY VARCHAR(100),
    STATE VARCHAR(100),
    COUNTRY VARCHAR(100),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE Wishlist (
    CustomerID INT,
    BookID INT,
    PRIMARY KEY (CustomerID, BookID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

CREATE TABLE Orderr (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT,
    PaymentDetails VARCHAR(255),
    ShippingStatus VARCHAR(50),
    ShippingAddressID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ShippingAddressID) REFERENCES Address(AddressID)
);

CREATE TABLE Order_Book (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    ItemDiscount DECIMAL(5,2),
    FOREIGN KEY (OrderID) REFERENCES Orderr(OrderID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);
INSERT INTO Publisher VALUES (1, 'Agrawal LLC', '+912981498592, semvihaan@yahoo.com');
INSERT INTO Publisher VALUES (2, 'Ratta Group', '4536315568, devankartik@ranganathan.com');
INSERT INTO Publisher VALUES (3, 'Chandran Ltd', '06500997964, obatra@gmail.com');
INSERT INTO Publisher VALUES (4, 'Chokshi, Shukla and Mangal', '06567787206, keya01@mani-kadakia.com');
INSERT INTO Publisher VALUES (5, 'Chana-Mangal', '06476609019, wmander@srinivasan.com');
INSERT INTO Publisher VALUES (6, 'Deshmukh Enterprises', '02288013412, karansharma@hotmail.com');
INSERT INTO Publisher VALUES (7, 'Trivedi and Sons', '+912240987654, trivedipub@gmail.com');



INSERT INTO Book VALUES (1, 'Innovate the Future', '9783161484100', 1, 2022, 499.99, 1);
INSERT INTO Book VALUES (2, 'Crafting Ideas', '9788126906461', 2, 2021, 359.50, 2);
INSERT INTO Book VALUES (3, 'Beyond the Horizon', '9788175257665', 3, 2019, 749.00, 3);
INSERT INTO Book VALUES (4, 'Digital Bharat', '9780143442290', 1, 2024, 599.00, 4);
INSERT INTO Book VALUES (5, 'Mythical India', '9789353026028', 2, 2023, 289.75, 5);
INSERT INTO Book VALUES (6, 'Urban Sketches', '9788173711465', 1, 2020, 699.00, 6);
INSERT INTO Book VALUES (7, 'Startup Dreams', '9789387164881', 1, 2021, 849.00, 7);

INSERT INTO Genre VALUES (1, 'Fiction');
INSERT INTO Genre VALUES (2, 'Non-Fiction');
INSERT INTO Genre VALUES (3, 'Science Fiction');
INSERT INTO Genre VALUES (4, 'Fantasy');
INSERT INTO Genre VALUES (5, 'Mystery');
INSERT INTO Genre VALUES (6, 'Biography');
INSERT INTO Genre VALUES (7, 'Romance');

INSERT INTO BookGenre VALUES (1, 2);
INSERT INTO BookGenre VALUES (2, 1);
INSERT INTO BookGenre VALUES (3, 3);
INSERT INTO BookGenre VALUES (4, 4);
INSERT INTO BookGenre VALUES (5, 5);
INSERT INTO BookGenre VALUES (6, 6);
INSERT INTO BookGenre VALUES (7, 7);

INSERT INTO Author VALUES (1, 'Ravi Subramanian', 'Author of many financial thrillers based in India.');
INSERT INTO Author VALUES (2, 'Anuja Chauhan', 'Known for romantic novels with Indian flavor.');
INSERT INTO Author VALUES (3, 'Amish Tripathi', 'Writer of mythology-inspired novels.');
INSERT INTO Author VALUES (4, 'Chetan Bhagat', 'Popular fiction writer and speaker.');
INSERT INTO Author VALUES (5, 'Devdutt Pattanaik', 'Expert in mythology and history.');
INSERT INTO Author VALUES (6, 'Sudha Murthy', 'Renowned Indian author and philanthropist.');
INSERT INTO Author VALUES (7, 'Rujuta Diwekar', 'Celebrity nutritionist and author.');

INSERT INTO BookAuthor VALUES (1, 1);
INSERT INTO BookAuthor VALUES (2, 2);
INSERT INTO BookAuthor VALUES (3, 3);
INSERT INTO BookAuthor VALUES (4, 4);
INSERT INTO BookAuthor VALUES (5, 5);
INSERT INTO BookAuthor VALUES (6, 6);
INSERT INTO BookAuthor VALUES (7, 7);
INSERT INTO Customer VALUES (1, 'Vishal Gupta');
INSERT INTO Customer VALUES (2, 'Priya Sharma');
INSERT INTO Customer VALUES (3, 'Karan Verma');
INSERT INTO Customer VALUES (4, 'Sneha Iyer');
INSERT INTO Customer VALUES (5, 'Aman Kapoor');
INSERT INTO Customer VALUES (6, 'Neha Reddy');
INSERT INTO Customer VALUES (7, 'Rohit Singh');

INSERT INTO ADDRESS VALUES (1, 1, 'MG Road', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO ADDRESS VALUES (2, 2, 'Brigade Road', 'Bangalore', 'Karnataka', 'India');
INSERT INTO ADDRESS VALUES (3, 3, 'Park Street', 'Kolkata', 'West Bengal', 'India');
INSERT INTO ADDRESS VALUES (4, 4, 'Banjara Hills', 'Hyderabad', 'Telangana', 'India');
INSERT INTO ADDRESS VALUES (5, 5, 'Connaught Place', 'Delhi', 'Delhi', 'India');
INSERT INTO ADDRESS VALUES (6, 6, 'Navrangpura', 'Ahmedabad', 'Gujarat', 'India');
INSERT INTO ADDRESS VALUES (7, 7, 'Velachery', 'Chennai', 'Tamil Nadu', 'India');

INSERT INTO Wishlist VALUES (1, 3);
INSERT INTO Wishlist VALUES (2, 1);
INSERT INTO Wishlist VALUES (3, 4);
INSERT INTO Wishlist VALUES (4, 2);
INSERT INTO Wishlist VALUES (5, 5);
INSERT INTO Wishlist VALUES (6, 6);
INSERT INTO Wishlist VALUES (7, 7);

INSERT INTO Orderr VALUES (1, '2024-06-01', 1, '4111111111111111', 'Delivered', 1);
INSERT INTO Orderr VALUES (2, '2024-05-12', 2, '5500000000000004', 'Shipped', 2);
INSERT INTO Orderr VALUES (3, '2024-04-20', 3, '6011000000000004', 'Pending', 3);
INSERT INTO Orderr VALUES (4, '2024-03-15', 4, '3528000000000000', 'Delivered', 4);
INSERT INTO Orderr VALUES (5, '2024-02-28', 5, '2221000000000009', 'Shipped', 5);
INSERT INTO Orderr VALUES (6, '2024-01-18', 6, '378282246310005', 'Pending', 6);
INSERT INTO Orderr VALUES (7, '2023-12-05', 7, '6011111111111117', 'Delivered', 7);

INSERT INTO Order_Book VALUES (1, 1, 3, 2, 5.00);
INSERT INTO Order_Book VALUES (2, 2, 1, 1, 10.00);
INSERT INTO Order_Book VALUES (3, 3, 4, 3, 0.00);
INSERT INTO Order_Book VALUES (4, 4, 2, 1, 7.50);
INSERT INTO Order_Book VALUES (5, 5, 5, 2, 0.00);
INSERT INTO Order_Book VALUES (6, 6, 6, 1, 15.00);
INSERT INTO Order_Book VALUES (7, 7, 7, 4, 3.25);


