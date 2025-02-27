CREATE TABLE DanceClassTypes (
    TypeID INT PRIMARY KEY,
    TypeName VARCHAR(50)
);

CREATE TABLE DanceClasses (
    ClassID INT PRIMARY KEY,
    BusinessID INT,
    TypeID INT,
    ClassName VARCHAR(100),
    Instructor VARCHAR(100),
    FOREIGN KEY (BusinessID) REFERENCES Businesses(BusinessID),
    FOREIGN KEY (TypeID) REFERENCES DanceClassTypes(TypeID)
);

CREATE TABLE DanceExperienceLevels (
    LevelID INT PRIMARY KEY,
    LevelName VARCHAR(50)
);

CREATE TABLE MemberDanceProgress (
    ProgressID INT PRIMARY KEY,
    MemberID INT,
    TypeID INT,
    LevelID INT,
    PromotionDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (TypeID) REFERENCES DanceClassTypes(TypeID),
    FOREIGN KEY (LevelID) REFERENCES DanceExperienceLevels(LevelID)
);

CREATE TABLE DanceAttendance (
    AttendanceID INT PRIMARY KEY,
    MemberID INT,
    ClassID INT,
    AttendanceDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ClassID) REFERENCES DanceClasses(ClassID)
);
