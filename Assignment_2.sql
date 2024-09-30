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