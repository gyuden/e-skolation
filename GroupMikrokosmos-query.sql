/* MMS 144 – Multimedia DBMS
by Group Mikrokosmos

Members:
Bacud, Francelle Joanne
Del Rosario, Denica Eireen
Tuason, Myles Lorraine
*/

/* Retrieve the masterlist of student and portfolio data */
SELECT s.*, p.*
FROM Student s
INNER JOIN Has h ON s.studentID = h.studentID
INNER JOIN Portfolio p ON h.portfolioID = p.portfolioID;

/* Retrieve details of portfolio(s) created on 2016 */
SELECT *
FROM Portfolio WHERE yearCreated=2016;

/* Retrieve post title and date from photographs posts. */
SELECT postTitle, postDate
FROM Posts WHERE postType='Photograph';

/* Retrieve posts that have more than more than 1000 views */
SELECT *
FROM Posts WHERE views>1000;

/* Retrieve portfolios of students who are in the BES Program */
SELECT p.*
FROM Portfolio p
INNER JOIN Has h ON p.portfolioID = h.portfolioID
INNER JOIN Student s ON h.studentID = s.studentID
INNER JOIN Takes t ON s.studentID = t.studentID
INNER JOIN Program pr ON t.programID = pr.programID
WHERE pr.programName = 'Bachelor in Education Studies' or pr.programID = 'BES';

/* Retrieve students whose instructor is Namjoon */
SELECT s.*
FROM Student s
INNER JOIN Takes t ON s.studentID = t.studentID
INNER JOIN Handles h ON t.programID = h.programID
INNER JOIN Faculty f ON h.facultyID = f.facultyID
WHERE f.facultyID = ('091294');

/* Retrieve a student’s specific portfolio */
SELECT p.portfolioID, p.portfolioName, p.portfolioType, p.yearCreated
FROM Portfolio p
INNER JOIN Has h ON p.portfolioID = h.portfolioID
INNER JOIN Student s ON h.studentID = s.studentID
WHERE s.studentID = '2020-10139';

/* Retrieve students in a specific program (BAMS) */
SELECT s.studentID, s.firstName, s.middleName, s.lastName, s.yearEnrolled
FROM Student s
INNER JOIN Takes t ON s.studentID = t.studentID
INNER JOIN Program p ON t.programID = p.programID
WHERE p.programID = 'BAMS';

/* Retrieve users who are Tech Administrators */
SELECT *
FROM TechAdmin;

/* Retrieve TechAdmin monitor troubleshoots on all portfolios */
SELECT p.portfolioName, m.remarks, t.firstName, t.techrole
FROM Monitors m
INNER JOIN Portfolio p ON m.portfolioid=p.portfolioid
INNER JOIN TechAdmin t ON m.adminID=t.adminID;

/* Retrieve Portfolio names, year created, and their author’s last name and student id in the order their creation date */
SELECT s.studentid, s.lastname, p.portfolioname, p.yearcreated
FROM Student s
INNER JOIN Has h ON s.studentID = h.studentID
INNER JOIN Portfolio p ON h.portfolioID = p.portfolioID
ORDER BY p.yearCreated;
