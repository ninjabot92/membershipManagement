CREATE TABLE BUSINESS (
    BusinessID INT PRIMARY KEY,
    BusinessName VARCHAR(100),
    BusinessType ENUM('Karate School', 'Dance Studio'),
    OwnerName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);
