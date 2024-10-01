-- . To find all managers with salary >1500

SELECT * FROM emp
WHERE job = 'MANAGER'
AND sal >= 1500;
-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 3 rows in set (0.00 sec)

-- list all employees with sal >1200 and < 2000

SELECT * FROM emp
WHERE sal > 1200 and sal < 2000;
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- 5 rows in set (0.00 sec)

-- list all employees with sal is 1600 or sal is 800 or sal is 1900

SELECT * FROM emp
WHERE sal IN (1600, 800, 1900);
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- |  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800.00 |   NULL |     20 |
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- 2 rows in set (0.00 sec)

-- list all employees with R at second last position in name

SELECT * FROM emp
WHERE ename REGEXP '^.*R.$';
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- |  7521 | WARD  | SALESMAN | 7698 | 1981-02-22 | 1250.00 | 500.00 |     30 |
-- |  7782 | CLARK | MANAGER  | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
-- |  7902 | FORD  | ANALYST  | 7566 | 1981-12-03 | 3000.00 |   NULL |     20 |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- 3 rows in set (0.02 sec)

-- List all employees with name starts with A and ends with N

SELECT * FROM emp
WHERE ename REGEXP '^A.*N$';
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- 1 row in set (0.00 sec)


-- Q2

-- list all employees with salary > 1250 and dept no=30

SELECT * FROM emp
WHERE sal > 1250
AND deptno = 30;
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- 3 rows in set (0.00 sec)

-- list all employees with salary >=1250 and <= 
SELECT * FROM emp
WHERE sal BETWEEN 1250 AND 3000;
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- 10 rows in set (0.00 sec)

-- list all employees with salary >1250 and < 3000

SELECT * FROM emp
WHERE sal > 1250 AND sal < 3000;
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- |  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
-- |  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |   NULL |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- 6 rows in set (0.00 sec)

-- list all employees with salary either equal to 3000 or 1250 or 2500

SELECT * FROM emp
WHERE sal IN (3000, 1250, 2500);
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
-- |  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- 4 rows in set (0.00 sec)

-- list all employee with name=SMITH

SELECT * FROM emp
WHERE ename = 'SMITH';
-- +-------+-------+-------+------+------------+--------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL    | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+--------+------+--------+
-- |  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
-- +-------+-------+-------+------+------------+--------+------+--------+
-- 1 row in set (0.00 sec)

-- list all employees with name starting with S

SELECT * FROM emp
WHERE ename LIKE 'S%';
-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 2 rows in set (0.00 sec)

-- list all employees with name ending with S

SELECT * FROM emp
WHERE ename LIKE '%S';
-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
-- |  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 3 rows in set (0.00 sec)

-- list all employees with name contains I at 2nd position

SELECT * FROM emp
WHERE ename LIKE '_I%';
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- 2 rows in set (0.00 sec)

-- list all employees with name starts with A ends with N and somewhere in between L is there

SELECT * FROM emp
WHERE ename LIKE 'A%L%N';
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- 1 row in set (0.00 sec)

-- ist all employees with name starts with A and B at 3 rd position and P at second last position

SELECT * FROM emp
WHERE ename REGEXP '^A.{1}B.*P.{1}$';
-- Empty set (0.00 sec)

-- List all employees with name starts with either A or starts with S or starts with W

SELECT * FROM emp
WHERE ename REGEXP '^[ASW].*$';
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- |  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800.00 |   NULL |     20 |
-- |  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- |  7521 | WARD  | SALESMAN | 7698 | 1981-02-22 | 1250.00 | 500.00 |     30 |
-- |  7788 | SCOTT | ANALYST  | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
-- |  7876 | ADAMS | CLERK    | 7788 | 1983-01-12 | 1100.00 |   NULL |     20 |
-- +-------+-------+----------+------+------------+---------+--------+--------+
-- 5 rows in set (0.00 sec)


-- practice Aggregate functions

-- find max sal and min sal for each job

SELECT job, MAX(sal), MIN(sal)
FROM emp
GROUP BY job;
-- +-----------+----------+----------+
-- | job       | MAX(sal) | MIN(sal) |
-- +-----------+----------+----------+
-- | CLERK     |  1300.00 |   800.00 |
-- | SALESMAN  |  1600.00 |  1250.00 |
-- | MANAGER   |  2975.00 |  2450.00 |
-- | ANALYST   |  3000.00 |  3000.00 |
-- | PRESIDENT |  5000.00 |  5000.00 |
-- +-----------+----------+----------+
-- 5 rows in set (0.00 sec)

-- find how many employess have not received commission

SELECT COUNT(comm IS NULL) AS no_comm
FROM emp;
-- +---------+
-- | no_comm |
-- +---------+
-- |      14 |
-- +---------+
-- 1 row in set (0.00 sec)

-- find sum of sal of all employees working in dept no 10

SELECT SUM(sal) FROM emp
WHERE deptno=10;
-- +----------+
-- | SUM(sal) |
-- +----------+
-- |  8750.00 |
-- +----------+

-- find maximum salary,average sal for each job in every department

SELECT
    MAX(sal) AS max_sal,
    ROUND(AVG(sal)) AS avg_sal
FROM emp
GROUP BY deptno;
-- +---------+---------+
-- | max_sal | avg_sal |
-- +---------+---------+
-- | 3000.00 |    2175 |
-- | 2850.00 |    1567 |
-- | 5000.00 |    2917 |
-- +---------+---------+
-- 3 rows in set (0.00 sec)

-- find max salary for every department if deptno is > 15 and arrange data 
-- in deptno order

SELECT deptno, MAX(sal) AS max_sal FROM emp
WHERE deptno > 15
GROUP BY deptno
ORDER BY deptno;
-- +--------+----------+
-- | deptno | max_sal  |
-- +--------+----------+
-- |     20 |  3000.00 |
-- |     30 |  2850.00 |
-- +--------+----------+
-- 2 rows in set (0.00 sec)

-- find sum salary for every department if sum is > 3000

SELECT deptno, SUM(sal) FROM emp
GROUP BY deptno
HAVING SUM(sal) > 3000
ORDER BY deptno;
-- +--------+----------+
-- | deptno | SUM(sal) |
-- +--------+----------+
-- |     10 |  8750.00 |
-- |     20 | 10875.00 |
-- |     30 |  9400.00 |
-- +--------+----------+
-- 3 rows in set (0.00 sec)

-- list all department which has minimum 5 employees

SELECT deptno, COUNT(empno) AS emp_count
FROM emp
GROUP BY deptno
HAVING COUNT(empno) >= 5;
-- +--------+-----------+
-- | deptno | emp_count |
-- +--------+-----------+
-- |     20 |         5 |
-- |     30 |         6 |
-- +--------+-----------+
-- 2 rows in set (0.00 sec)


-- count how many employees earn salary more than 2000 in each job

SELECT COUNT(sal) AS ern_above_2000 
FROM emp
WHERE sal > 2000;
-- +----------------+
-- | ern_above_2000 |
-- +----------------+
-- |              6 |
-- +----------------+
-- 1 row in set (0.00 sec)

-- list all enames and jobs in small case letter

SELECT LOWER(ename), LOWER(job) FROM emp;
-- +--------------+------------+
-- | LOWER(ename) | LOWER(job) |
-- +--------------+------------+
-- | smith        | clerk      |
-- | allen        | salesman   |
-- | ward         | salesman   |
-- | jones        | manager    |
-- | martin       | salesman   |
-- | blake        | manager    |
-- | clark        | manager    |
-- | scott        | analyst    |
-- | king         | president  |
-- | turner       | salesman   |
-- | adams        | clerk      |
-- | james        | clerk      |
-- | miller       | clerk      |
-- +--------------+------------+
-- 14 rows in set (0.01 sec)

-- list all names and jobs so that the length of name should be 15 if it is 
-- smaller then add spaces to left

SELECT 
    LPAD(ename,15,' ') AS ename,
    LPAD(job,15,' ') AS job
FROM emp;
-- +-----------------+-----------------+
-- | ename           | job             |
-- +-----------------+-----------------+
-- |           SMITH |           CLERK |
-- |           ALLEN |        SALESMAN |
-- |            WARD |        SALESMAN |
-- |           JONES |         MANAGER |
-- |          MARTIN |        SALESMAN |
-- |           BLAKE |         MANAGER |
-- |           CLARK |         MANAGER |
-- |           SCOTT |         ANALYST |
-- |            KING |       PRESIDENT |
-- |          TURNER |        SALESMAN |
-- |           ADAMS |           CLERK |
-- |           JAMES |           CLERK |
-- |            FORD |         ANALYST |
-- |          MILLER |           CLERK |
-- +-----------------+-----------------+
-- 14 rows in set (0.00 sec)


-- display min sal,max sal, average sal for all employees 
-- working under same manager

SELECT 
    mgr, 
    MIN(sal) AS min_sal, 
    MAX(sal) AS max_sal, 
    ROUND(AVG(sal)) AS avg_sal
FROM emp
WHERE mgr IS NOT NULL
GROUP BY mgr
ORDER BY mgr;
-- +------+---------+---------+---------+
-- | mgr  | min_sal | max_sal | avg_sal |
-- +------+---------+---------+---------+
-- | 7566 | 3000.00 | 3000.00 |    3000 |
-- | 7698 |  950.00 | 1600.00 |    1310 |
-- | 7782 | 1300.00 | 1300.00 |    1300 |
-- | 7788 | 1100.00 | 1100.00 |    1100 |
-- | 7839 | 2450.00 | 2975.00 |    2758 |
-- | 7902 |  800.00 |  800.00 |     800 |
-- +------+---------+---------+---------+
-- 6 rows in set (0.00 sec)

-- find sum of total earnings(sal+comm), average of sal+comm, for all employees 
-- who earn sal > 2000 and work in either dept no 10 or 20

SELECT 
    deptno,
    ROUND(SUM(sal + IFNULL(comm,0))) AS sum_sal, 
    ROUND(AVG(sal + IFNULL(comm,0))) AS avg_sal
FROM emp
WHERE sal > 2000 
AND deptno IN (10,20)
GROUP BY deptno
ORDER BY deptno;
-- +--------+---------+---------+
-- | deptno | sum_sal | avg_sal |
-- +--------+---------+---------+
-- |     10 |    7450 |    3725 |
-- |     20 |    8975 |    2992 |
-- +--------+---------+---------+
-- 2 rows in set (0.00 sec)

-- list all employees who joined in Aug 1980 and salary is >1500 and < 2500

SELECT * FROM emp
WHERE hiredate LIKE '1980-%'
AND sal > 1500 
AND sal < 2500;
-- Empty set (0.00 sec)

-- list all employees joined in either aug or may or dec

SELECT * FROM emp
WHERE MONTH(hiredate) in (08,05,12);
-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
-- |  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 5 rows in set (0.00 sec)

-- display name and hiredate in dd/mm/yy format for all employees whose job 
-- is clerk and they earn some commission

SELECT 
    ename AS name, 
    DATE_FORMAT(hiredate, '%d/%m/%Y') as hiredate,
    ROUND(sal) as sal
FROM emp
WHERE job = 'SALESMAN' 
AND comm IS NOT NULL;
-- +--------+------------+------+
-- | name   | hiredate   | sal  |
-- +--------+------------+------+
-- | ALLEN  | 20/02/1981 | 1600 |
-- | WARD   | 22/02/1981 | 1250 |
-- | MARTIN | 28/09/1981 | 1250 |
-- | TURNER | 08/09/1981 | 1500 |
-- +--------+------------+------+
-- 4 rows in set (0.00 sec)


-- list empcode,empno,name and job for each employee. (note :empcode is 3 
-- to 5 characters from name and last 2 characters of job)

SELECT
    empno,
    ename AS name,
    LOWER(CONCAT( SUBSTRING(ename,1,4), SUBSTRING(job,-3))) AS empcode
FROM emp;
-- +-------+--------+---------+
-- | empno | name   | empcode |
-- +-------+--------+---------+
-- |  7369 | SMITH  | smiterk |
-- |  7499 | ALLEN  | alleman |
-- |  7521 | WARD   | wardman |
-- |  7566 | JONES  | joneger |
-- |  7654 | MARTIN | martman |
-- |  7698 | BLAKE  | blakger |
-- |  7782 | CLARK  | clarger |
-- |  7788 | SCOTT  | scotyst |
-- |  7839 | KING   | kingent |
-- |  7844 | TURNER | turnman |
-- |  7876 | ADAMS  | adamerk |
-- |  7900 | JAMES  | jameerk |
-- |  7902 | FORD   | fordyst |
-- |  7934 | MILLER | millerk |
-- +-------+--------+---------+
-- 14 rows in set (0.00 sec)

-- Display thousand separator and $ symbol for commission if it is null then 
-- display it as 0 for all employees whose name starts with A and ends with N

SELECT 
    ename AS name, 
    CONCAT('$', LPAD(FORMAT(IFNULL(comm, 0), 0),6, ' ')) AS f_comm
FROM emp
WHERE ename LIKE 'A%N';
-- +-------+---------+
-- | name  | f_comm  |
-- +-------+---------+
-- | ALLEN | $   300 |
-- +-------+---------+
-- 1 row in set (0.00 sec)

-- Display empid,name,sal,comm,remark Remark should base on following conditions 
--      comm >= 600 "excellent Keep it up" 
--      if it < 600 or not null "good" 
--      otherwise "Need improvement"

SELECT 
    empno AS empid,
    ename, 
    LPAD(CONCAT('$',LPAD(ROUND((sal),0),6,' ')),7,'') AS salary, 
    ROUND((comm)) AS comm, 
    (CASE
        WHEN comm >= 600 THEN "Excellent Keep it up"
        WHEN comm < 600 AND comm IS NOT NULL AND comm != 0 THEN "Good"
        ELSE "Need improvement"
    END) AS remark
FROM emp;
-- +-------+--------+---------+------+----------------------+
-- | empid | ename  | salary  | comm | remark               |
-- +-------+--------+---------+------+----------------------+
-- |  7369 | SMITH  | $   800 | NULL | Need improvement     |
-- |  7499 | ALLEN  | $  1600 |  300 | Good                 |
-- |  7521 | WARD   | $  1250 |  500 | Good                 |
-- |  7566 | JONES  | $  2975 | NULL | Need improvement     |
-- |  7654 | MARTIN | $  1250 | 1400 | Excellent Keep it up |
-- |  7698 | BLAKE  | $  2850 | NULL | Need improvement     |
-- |  7782 | CLARK  | $  2450 | NULL | Need improvement     |
-- |  7788 | SCOTT  | $  3000 | NULL | Need improvement     |
-- |  7839 | KING   | $  5000 | NULL | Need improvement     |
-- |  7844 | TURNER | $  1500 |    0 | Need improvement     |
-- |  7876 | ADAMS  | $  1100 | NULL | Need improvement     |
-- |  7900 | JAMES  | $   950 | NULL | Need improvement     |
-- |  7902 | FORD   | $  3000 | NULL | Need improvement     |
-- |  7934 | MILLER | $  1300 | NULL | Need improvement     |
-- +-------+--------+---------+------+----------------------+
-- 14 rows in set (0.00 sec)

-- Display empid, name, deptno and department name by using following conditions. 
-- dept 10 then "Hr" if 20 then "Admin" if 30 then "accounts" otherwise purchase

SELECT 
    empno AS empid,
    ename AS name,
    deptno,
    (CASE
        WHEN deptno = 10 THEN "Hr"
        WHEN deptno = 20 THEN "Admin"
        WHEN deptno = 30 THEN "Accounts"
        ELSE "purchase"
    END) AS department
FROM emp
ORDER BY deptno;
-- +-------+--------+--------+------------+
-- | empid | name   | deptno | department |
-- +-------+--------+--------+------------+
-- |  7782 | CLARK  |     10 | Hr         |
-- |  7839 | KING   |     10 | Hr         |
-- |  7934 | MILLER |     10 | Hr         |
-- |  7369 | SMITH  |     20 | Admin      |
-- |  7566 | JONES  |     20 | Admin      |
-- |  7788 | SCOTT  |     20 | Admin      |
-- |  7876 | ADAMS  |     20 | Admin      |
-- |  7902 | FORD   |     20 | Admin      |
-- |  7499 | ALLEN  |     30 | Accounts   |
-- |  7521 | WARD   |     30 | Accounts   |
-- |  7654 | MARTIN |     30 | Accounts   |
-- |  7698 | BLAKE  |     30 | Accounts   |
-- |  7844 | TURNER |     30 | Accounts   |
-- |  7900 | JAMES  |     30 | Accounts   |
-- +-------+--------+--------+------------+
-- 14 rows in set (0.00 sec)


