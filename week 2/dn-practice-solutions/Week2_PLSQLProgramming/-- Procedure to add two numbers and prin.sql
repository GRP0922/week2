-- Procedure to add two numbers and print the result

CREATE OR REPLACE PROCEDURE add_numbers(
    p_num1 IN NUMBER,
    p_num2 IN NUMBER
) AS
    v_sum NUMBER;
BEGIN
    v_sum := p_num1 + p_num2;
    DBMS_OUTPUT.PUT_LINE('Sum is: ' || v_sum);
END;
/

-- Example call:
BEGIN
    add_numbers(5, 7);
END;
/