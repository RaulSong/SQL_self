--***CH07.1 하나의 열에 출력 결과를 담는 다중행 함수***

--EX07.1 SUM 함수를 사용하여 급여 합계 출력
SELECT
    SUM(salary)
FROM employees;

--EX07.2 SUM 함수를 사용하여 사원 이름과 급여 합계 출력
SELECT
    last_name, SUM(salary)     --오류!!
FROM employees;
--다중행 함수는 여러 행이 입력되어 하나의 행으로 결과가 출력되는 특징을 갖는다. 기본적으로 여러 행이 결과로 나올 수 있는 열을 함께 사용할 수 없음

--EX07.3 추가 수당 합계 구하기
SELECT
    SUM(commission_pct)
FROM employees;

--EX07.4 급여 합계 구하기(DISTINCT, ALL 사용)
SELECT
    SUM(DISTINCT salary),
    SUM(ALL salary),
    SUM(salary)
FROM employees;

--EX07.5 직원 테이블의 데이터 개수 출력
SELECT
    COUNT(*)            --COUNT : 데이터 갯수를 구해 주는 COUNT 함수
FROM employees;

--EX07.6 부서 번호가 30번인 직원 수 구하기
SELECT
    COUNT(*)
FROM employees
WHERE department_id = 30;

--EX07.7 COUNT 함수를 사용하여 급여 갯수 구하기 (DISTINCT, ALL 사용)
SELECT
    COUNT(DISTINCT salary),
    COUNT(ALL salary),
    COUNT(salary)       --옵션을 지정안하면 ALL이 기본!!
FROM employees;