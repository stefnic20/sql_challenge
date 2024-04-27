--create tables and import csv files; code created from QuickDBD
CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birthdate" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Dept_Manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

--List the employee number, last name, first name, sex, and salary of each employee.
SELECT "Employees".emp_no, "Salaries".salary, "Employees".last_name, "Employees".first_name, "Employees".sex
FROM "Employees"
INNER JOIN "Salaries" ON
"Employees".emp_no="Salaries".emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date IN ('1/1/86', '1/2/86', '1/3/86', '1/4/86', '1/5/86', '1/6/86', '1/7/86', '1/8/86', '1/9/86', '1/10/86',
'1/11/86','1/12/86','1/13/86','1/14/86','1/15/86','1/16/86','1/17/86','1/18/86','1/19/86','1/20/86','1/21/86','1/22/86',
'1/23/86','1/24/86','1/25/86','1/26/86','1/27/86','1/28/86','1/29/86','1/30/86','1/31/86','2/1/86','2/2/86','2/3/86','2/4/86',
'2/5/86','2/6/86','2/7/86','2/8/86','2/9/86','2/10/86','2/11/86','2/12/86','2/13/86','2/14/86','2/15/86','2/16/86',
'2/17/86','2/18/86','2/19/86','2/20/86','2/21/86','2/22/86','2/23/86','2/24/86','2/25/86','2/26/86','2/27/86','2/28/86',
'3/1/86','3/2/86','3/3/86','3/4/86','3/5/86','3/6/86','3/7/86','3/8/86','3/9/86','3/10/86','3/11/86','3/12/86','3/13/86',
'3/14/86','3/15/86','3/16/86','3/17/86','3/18/86','3/19/86','3/20/86','3/21/86','3/22/86','3/23/86','3/24/86',
'3/25/86','3/26/86','3/27/86','3/28/86','3/29/86','3/30/86','3/31/86','4/1/86','4/2/86','4/3/86','4/4/86','4/5/86',
'4/6/86','4/7/86','4/8/86','4/9/86','4/10/86','4/11/86','4/12/86','4/13/86','4/14/86','4/15/86','4/16/86','4/17/86',
'4/18/86','4/19/86','4/20/86','4/21/86','4/22/86','4/23/86','4/24/86','4/25/86','4/26/86','4/27/86','4/28/86','4/29/86',
'4/30/86','5/1/86','5/2/86','5/3/86','5/4/86','5/5/86','5/6/86','5/7/86','5/8/86','5/9/86','5/10/86','5/11/86','5/12/86',
'5/13/86','5/14/86','5/15/86','5/16/86','5/17/86','5/18/86','5/19/86','5/20/86','5/21/86','5/22/86','5/23/86','5/24/86',
'5/25/86','5/26/86','5/27/86','5/28/86','5/29/86','5/30/86','5/31/86','6/1/86','6/2/86','6/3/86','6/4/86','6/5/86',
'6/6/86','6/7/86','6/8/86','6/9/86','6/10/86','6/11/86','6/12/86','6/13/86','6/14/86','6/15/86','6/16/86','6/17/86',
'6/18/86','6/19/86','6/20/86','6/21/86','6/22/86','6/23/86','6/24/86','6/25/86','6/26/86','6/27/86','6/28/86','6/29/86',
'6/30/86','7/1/86','7/2/86','7/3/86','7/4/86','7/5/86','7/6/86','7/7/86','7/8/86','7/9/86','7/10/86','7/11/86','7/12/86',
'7/13/86','7/14/86','7/15/86','7/16/86','7/17/86','7/18/86','7/19/86','7/20/86','7/21/86','7/22/86','7/23/86','7/24/86',
'7/25/86','7/26/86','7/27/86','7/28/86','7/29/86','7/30/86','7/31/86','8/1/86','8/2/86','8/3/86','8/4/86','8/5/86',
'8/6/86','8/7/86','8/8/86','8/9/86','8/10/86','8/11/86','8/12/86','8/13/86','8/14/86','8/15/86','8/16/86','8/17/86',
'8/18/86','8/19/86','8/20/86','8/21/86','8/22/86','8/23/86','8/24/86','8/25/86','8/26/86','8/27/86','8/28/86','8/29/86',
'8/30/86','8/31/86','9/1/86','9/2/86','9/3/86','9/4/86','9/5/86','9/6/86','9/7/86','9/8/86','9/9/86','9/10/86','9/11/86',
'9/12/86','9/13/86','9/14/86','9/15/86','9/16/86','9/17/86','9/18/86','9/19/86','9/20/86','9/21/86','9/22/86','9/23/86',
'9/24/86','9/25/86','9/26/86','9/27/86','9/28/86','9/29/86','9/30/86','10/1/86','10/2/86','10/3/86','10/4/86','10/5/86',
'10/6/86','10/7/86','10/8/86','10/9/86','10/10/86','10/11/86','10/12/86','10/13/86','10/14/86','10/15/86','10/16/86',
'10/17/86','10/18/86','10/19/86','10/20/86','10/21/86','10/22/86','10/23/86','10/24/86','10/25/86','10/26/86','10/27/86',
'10/28/86','10/29/86','10/30/86','10/31/86','11/1/86','11/2/86','11/3/86','11/4/86','11/5/86','11/6/86','11/7/86',
'11/8/86','11/9/86','11/10/86','11/11/86','11/12/86','11/13/86','11/14/86','11/15/86','11/16/86','11/17/86','11/18/86',
'11/19/86','11/20/86','11/21/86','11/22/86','11/23/86','11/24/86','11/25/86','11/26/86','11/27/86','11/28/86','11/29/86',
'11/30/86','12/1/86','12/2/86','12/3/86','12/4/86','12/5/86','12/6/86','12/7/86','12/8/86','12/9/86','12/10/86','12/11/86',
'12/12/86','12/13/86','12/14/86','12/15/86','12/16/86','12/17/86','12/18/86','12/19/86','12/20/86','12/21/86',
'12/22/86','12/23/86','12/24/86','12/25/86','12/26/86','12/27/86','12/28/86','12/29/86','12/30/86','12/31/86')
ORDER BY last_name ASC

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Dept_Manager".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employees".last_name, "Employees".first_name
FROM "Dept_Manager"
JOIN "Departments" ON "Dept_Manager".dept_no="Departments".dept_no
JOIN "Employees" ON "Dept_Manager".emp_no="Employees".emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT "Dept_Emp".dept_no, "Dept_Emp".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employees" ON "Dept_Emp".emp_no="Employees".emp_no
JOIN "Departments" ON "Dept_Emp".dept_no="Departments".dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT "Employees".first_name, "Employees".last_name, "Employees".sex
FROM "Employees"
WHERE first_name='Hercules' 
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT "Employees".first_name, "Employees".last_name, "Dept_Emp".emp_no, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Departments" ON "Dept_Emp".dept_no="Departments".dept_no
JOIN "Employees" ON "Dept_Emp".emp_no="Employees".emp_no
WHERE dept_name='Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Employees".first_name, "Employees".last_name, "Dept_Emp".emp_no, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Departments" ON "Dept_Emp".dept_no="Departments".dept_no
JOIN "Employees" ON "Dept_Emp".emp_no="Employees".emp_no
WHERE "Departments".dept_name IN ('Sales','Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Frequency counts"
FROM "Employees"
GROUP BY last_name
ORDER BY "Frequency counts" DESC;
