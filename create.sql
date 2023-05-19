CREATE TABLE Student (
	studentID TEXT,
	portfolioID INTEGER, 
	firstName TEXT,
	middleName TEXT,
	lastName TEXT,
	yearEnrolled YEAR,
	PRIMARY KEY (studentID, portfolioID),
	FOREIGN KEY (portfolioID) REFERENCES Portfolio(portfolioID)
);

CREATE TABLE Portfolio (
	portfolioID INTEGER,
	portfolioName TEXT,
	portfolioType TEXT,
	yearCreated YEAR,
	PRIMARY KEY (portfolioID)
);

CREATE TABLE Posts (
	postID INTEGER,
	postTitle TEXT,
	postDate DATE,
	postType TEXT,
	views SERIAL,
	comments INTEGER,
	PRIMARY KEY (postID)
);

CREATE TABLE Contains (
	portfolioID INTEGER,
	postID INTEGER,
	PRIMARY KEY (portfolioID, postID),
	FOREIGN KEY (portfolioID) REFERENCES Portfolio(portfolioID),
	FOREIGN KEY (postID) REFERENCES Posts(postID)
);

CREATE TABLE Program (
	programID TEXT,
	programName TEXT,
	PRIMARY KEY (programID)
);

CREATE TABLE Faculty (
	facultyID INTEGER,
	firstName TEXT,
	middleName TEXT,
	lastName TEXT,
	PRIMARY KEY (facultyID)
);

CREATE TABLE TechAdmin (
	adminID INTEGER,
	firstName TEXT,
	middleName TEXT,
	lastName TEXT,
	techRole TEXT,
	PRIMARY KEY (adminID)
);

CREATE TABLE Visitor (
	visitorID SERIAL,
	PRIMARY KEY (visitorID),
	UNIQUE (visitorID)
);

CREATE TABLE Monitors (
	portfolioID INTEGER,
	adminID INTEGER,
	remarks TEXT,
	PRIMARY KEY (portfolioID, adminID),
	FOREIGN KEY (portfolioID) REFERENCES Portfolio(portfolioID),
	FOREIGN KEY (adminID) REFERENCES Portfolio(portfolioID)
);

CREATE TABLE Views (
	visitorID SERIAL,
	portfolioID INTEGER,
	remarks TEXT,
	PRIMARY KEY (visitorID, portfolioID),
	FOREIGN KEY (visitorID) REFERENCES Visitor(visitorID),
	FOREIGN KEY (portfolioID) REFERENCES Portfolio(portfolioID),
	UNIQUE (visitorID)
);

CREATE TABLE Takes (
	studentID TEXT,
	programID TEXT,
	PRIMARY KEY (studentID, programID),
	FOREIGN KEY (studentID) REFERENCES Student(studentID),
	FOREIGN KEY (programID) REFERENCES Program(programID)
);

CREATE TABLE Handles (
	facultyID INTEGER,
	programID TEXT,
	PRIMARY KEY (facultyID, programID),
	FOREIGN KEY (facultyID) REFERENCES Faculty(facultytID),
	FOREIGN KEY (programID) REFERENCES Program(programID)
);

CREATE TABLE Has (
	studentID TEXT,
	portfolioID INTEGER,
	PRIMARY KEY (studentID, portfolioID),
	FOREIGN KEY (studentID) REFERENCES Student(studentID),
	FOREIGN KEY (portfolioID) REFERENCES Portfolio(portfolioID)
);
