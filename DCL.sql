CREATE TABLE emp (
emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR2(50),
salary NUMBER
);

INSERT INTO emp VALUES (101, 'Alice', 50000);
INSERT INTO emp VALUES (102, 'Bob', 60000);
Commit;

GRANT SELECT ON emp TO userB;

SELECT * FROM userA.emp;



GRANT SELECT, INSERT, UPDATE ON emp TO userB;
INSERT INTO userA.emp VALUES (103, 'Charlie', 70000);

REVOKE SELECT, INSERT, UPDATE ON emp FROM userB;

Drop user userB;
Drop user userA cascade;

