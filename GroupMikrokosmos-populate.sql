/* MMS 144 – Multimedia DBMS
by Group Mikrokosmos

Members:
Bacud, Francelle Joanne
Del Rosario, Denica Eireen
Tuason, Myles Lorraine
*/

INSERT INTO Student (studentID, firstName, middleName, lastName, yearEnrolled)
VALUES
('2013-06137', 'Jimin', NULL, 'Park', 2013),
('2013-06136', 'Jungkook', NULL, 'Jeon', 2013),
('2013-06135', 'Taehyung', NULL, 'Kim', 2013),
('2020-30633', 'Denica', 'Dalan', 'del Rosario', 2020),
('2020-30536', 'Francelle', 'Coronel', 'Bacud', 2020),
('2020-10139', 'Raine', NULL, 'Tuason', 2020),
('2020-05084', 'Lucy', NULL, 'Shin', 2020);

INSERT INTO Portfolio (portfolioID, portfolioName, portfolioType, yearCreated)
VALUES
(1, 'Serendipity Stills', 'Photography', 2016),
(2, 'Golden Closet Film', 'Videography', 2017),
(3, 'Vante', 'Photography', 2016),
(4, 'Den’s Sight', 'Photography', 2022),
(5, 'pretzel', 'Videography', 2023),
(6, 'Silver Rose', 'Videography', 2018),
(7, 'PANORAMA', 'Graphic Design', 2021);

INSERT INTO Posts (postID, postTitle, postDate, postType, views, comments)
VALUES
(0001, 'Set Me Free', '2016-10-10', 'Photograph', 779, 'So cool!'),
(0002, 'Winter Bear', '2016-12-30', 'Photograph', 905, NULL),
(0003, 'G.C.F. in Saipan', '2017-07-09', 'Video', 1343, 'I love the colours!'),
(0004, 'G.C.F. in Helsinki', '2017-09-18', 'Video', 613, 'Very heartwarming.'),
(0005, 'Indigos', '2022-03-07', 'Photograph', 1018, NULL);

INSERT INTO Program (programID, programName)
VALUES
('BAMS', 'Bachelor of Arts in Multimedia Studies'),
('BES', 'Bachelor in Education Studies');

INSERT INTO Takes (studentID, programID)
VALUES
('2013-06137', 'BES'),
('2013-06136', 'BAMS'),
('2013-06135', 'BES'),
('2020-30633', 'BAMS'),
('2020-30536', 'BAMS'),
('2020-10139', 'BES'),
('2020-05084', 'BES');

INSERT INTO Faculty (facultyID, firstName, middleName, lastName)
VALUES
(030993, 'Yoongi', NULL, 'Min'),
(022794, 'Sangyeop', NULL, 'Choi'),
(091294, 'Namjoon', NULL, 'Kim'),
(120492, 'Seokjin', NULL, 'Kim');

INSERT INTO Handles (facultyID, programID)
VALUES
(030993, 'BAMS'),
(022794, 'BAMS'),
(091294, 'BES'),
(120492, 'BES');

INSERT INTO TechAdmin (adminID, firstName, middleName, lastName, techRole)
VALUES
(940218, 'Hoseok', NULL, 'Jung', 'UI/UX Designer'),
(950525, 'Danny', NULL, 'Shin', 'Developer'),
(960815, 'Wonsang', NULL, 'Cho', 'Security Analyst'),
(920613, 'Yechan', NULL, 'Shin', 'Admin');

INSERT INTO Views (visitorID, portfolioID, remarks)
VALUES
(1000, 1, NULL),
(1001, 5, NULL),
(1002, 2, 'I love the videos so much!'),
(1003, 1, 'Was indeed lucky to see this!'),
(1004, 4, NULL);

INSERT INTO Visitor (visitorID)
VALUES
(1000),
(1001),
(1002),
(1003),
(1004);

INSERT INTO Has (studentID, portfolioID)
VALUES
('2013-06137', 1),
('2013-06136', 2),
('2013-06135', 3),
('2020-30633', 4),
('2020-30536', 5),
('2020-10139', 6),
('2020-05084', 7);

INSERT INTO Monitors (portfolioID, adminID, remarks)
VALUES
(5, 920613, 'Deleted inappropriate comments on specific posts.'),
(2, 940218, 'Assisted in fixing faulty interactive elements of the portfolio.'),
(5, 960815, 'Checked any malicious activities from visitors.');

INSERT INTO Contains (portfolioID, postID)
VALUES
(1, 0001),
(3, 0002),
(2, 0003),
(2, 0004),
(4, 0005);
