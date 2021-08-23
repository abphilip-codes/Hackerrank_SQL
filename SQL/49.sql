-- https://www.hackerrank.com/challenges/the-company/problem

SELECT COMPANY.COMPANY_CODE, COMPANY.FOUNDER,
    COUNT(DISTINCT EMPLOYEE.LEAD_MANAGER_CODE),
    COUNT(DISTINCT EMPLOYEE.SENIOR_MANAGER_CODE),
    COUNT(DISTINCT EMPLOYEE.MANAGER_CODE),
    COUNT(DISTINCT EMPLOYEE.EMPLOYEE_CODE)
FROM COMPANY INNER JOIN EMPLOYEE
WHERE COMPANY.COMPANY_CODE = EMPLOYEE.COMPANY_CODE
GROUP BY COMPANY.COMPANY_CODE, COMPANY.FOUNDER
ORDER BY COMPANY.COMPANY_CODE;