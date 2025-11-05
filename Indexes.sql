CREATE TABLE StudentsF (
StudentID INT PRIMARY KEY,
FirstName VARCHAR2(50),
LastName VARCHAR2(50),
EnrollmentDate DATE
);

CREATE INDEX idx_LastName ON StudentsF(LastName);

INSERT INTO StudentsF VALUES(101, 'John', 'Doe', TO_DATE('15-Aug-2025', 'DD-Mon-YYYY'));
INSERT INTO StudentsF VALUES(102, 'Jane', 'Smith', TO_DATE('16 -Aug-2025', 'DD-Mon-YYYY'));
INSERT INTO StudentsF VALUES(103, 'Ravi', 'Kumar', TO_DATE('25 -Oct-2025', 'DD-Mon-YYYY'));

SELECT * FROM StudentsF WHERE StudentID = 102;
SELECT * FROM StudentsF WHERE LastName = 'Doe';


DELETE FROM StudentsF WHERE StudentID = 103;
DELETE FROM StudentsF WHERE LastName = 'Smith';


desc idx_LastName;

DROP INDEX idx_LastName;
