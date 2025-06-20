CREATE OR REPLACE PROCEDURE example_procedure (p_param IN VARCHAR2) IS
BEGIN
    -- Procedure logic goes here
    DBMS_OUTPUT.PUT_LINE('Parameter received: ' || p_param);
END example_procedure;
/

CREATE OR REPLACE PROCEDURE add_numbers (p_num1 IN NUMBER, p_num2 IN NUMBER, p_result OUT NUMBER) IS
BEGIN
    p_result := p_num1 + p_num2;
END add_numbers;
/

CREATE OR REPLACE PROCEDURE get_employee_name (p_emp_id IN NUMBER, p_emp_name OUT VARCHAR2) IS
BEGIN
    SELECT name INTO p_emp_name FROM employees WHERE id = p_emp_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_emp_name := 'Not Found';
END get_employee_name;
/

CREATE OR REPLACE PROCEDURE log_message (p_message IN VARCHAR2) IS
BEGIN
    INSERT INTO log_table (log_message, log_date) VALUES (p_message, SYSDATE);
    COMMIT;
END log_message;
/

-- Example of calling the procedures
BEGIN
    example_procedure('Hello, World!');
    
    DECLARE
        v_result NUMBER;
    BEGIN
        add_numbers(10, 20, v_result);
        DBMS_OUTPUT.PUT_LINE('Sum: ' || v_result);
    END;

    DECLARE
        v_emp_name VARCHAR2(100);
    BEGIN
        get_employee_name(1, v_emp_name);
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_emp_name);
    END;

    log_message('This is a log message.');
END;