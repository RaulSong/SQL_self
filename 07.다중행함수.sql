--***CH07.1 �ϳ��� ���� ��� ����� ��� ������ �Լ�***

--EX07.1 SUM �Լ��� ����Ͽ� �޿� �հ� ���
SELECT
    SUM(salary)
FROM employees;

--EX07.2 SUM �Լ��� ����Ͽ� ��� �̸��� �޿� �հ� ���
SELECT
    last_name, SUM(salary)     --����!!
FROM employees;
--������ �Լ��� ���� ���� �ԷµǾ� �ϳ��� ������ ����� ��µǴ� Ư¡�� ���´�. �⺻������ ���� ���� ����� ���� �� �ִ� ���� �Բ� ����� �� ����

--EX07.3 �߰� ���� �հ� ���ϱ�
SELECT
    SUM(commission_pct)
FROM employees;

--EX07.4 �޿� �հ� ���ϱ�(DISTINCT, ALL ���)
SELECT
    SUM(DISTINCT salary),
    SUM(ALL salary),
    SUM(salary)
FROM employees;

--EX07.5 ���� ���̺��� ������ ���� ���
SELECT
    COUNT(*)            --COUNT : ������ ������ ���� �ִ� COUNT �Լ�
FROM employees;

--EX07.6 �μ� ��ȣ�� 30���� ���� �� ���ϱ�
SELECT
    COUNT(*)
FROM employees
WHERE department_id = 30;

--EX07.7 COUNT �Լ��� ����Ͽ� �޿� ���� ���ϱ� (DISTINCT, ALL ���)
SELECT
    COUNT(DISTINCT salary),
    COUNT(ALL salary),
    COUNT(salary)       --�ɼ��� �������ϸ� ALL�� �⺻!!
FROM employees;