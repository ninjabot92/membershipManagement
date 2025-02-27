CREATE TABLE KarateBeltLevels (
    BeltID INT PRIMARY KEY,
    BeltName VARCHAR(50),
    BeltRank INT
);

CREATE TABLE MemberKarateProgress (
    ProgressID INT PRIMARY KEY,
    MemberID INT,
    BeltID INT,
    PromotionDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BeltID) REFERENCES KarateBeltLevels(BeltID)
);

CREATE TABLE KarateClasses (
    ClassID INT PRIMARY KEY,
    BusinessID INT,
    ClassName VARCHAR(100),
    Instructor VARCHAR(100),
    FOREIGN KEY (BusinessID) REFERENCES Businesses(BusinessID)
);

CREATE TABLE KarateAttendance (
    AttendanceID INT PRIMARY KEY,
    MemberID INT,
    ClassID INT,
    AttendanceDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ClassID) REFERENCES KarateClasses(ClassID)
);
