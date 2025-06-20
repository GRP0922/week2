-- Control Structures in PL/SQL

-- Example of IF-THEN control structure
DECLARE
    v_number NUMBER := 10;
BEGIN
    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is positive.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is negative.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is zero.');
    END IF;
END;
/

-- Example of CASE control structure
DECLARE
    v_grade CHAR(1) := 'B';
BEGIN
    CASE v_grade
        WHEN 'A' THEN
            DBMS_OUTPUT.PUT_LINE('Excellent');
        WHEN 'B' THEN
            DBMS_OUTPUT.PUT_LINE('Well done');
        WHEN 'C' THEN
            DBMS_OUTPUT.PUT_LINE('Good');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Grade not recognized');
    END CASE;
END;
/

-- Example of LOOP control structure
DECLARE
    v_counter NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Counter: ' || v_counter);
        v_counter := v_counter + 1;
        EXIT WHEN v_counter > 5;
    END LOOP;
END;
/

-- Example of WHILE loop
DECLARE
    v_counter NUMBER := 1;
BEGIN
    WHILE v_counter <= 5 LOOP
        DBMS_OUTPUT.PUT_LINE('Counter: ' || v_counter);
        v_counter := v_counter + 1;
    END LOOP;
END;
/

-- Example of FOR loop
BEGIN
    FOR v_counter IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('Counter: ' || v_counter);
    END LOOP;
END;
/

-- End of Control Structures examples

-- Exercise 1: Control Structures

DECLARE
  -- Declare variables here
  v_example NUMBER := 0;
BEGIN
  -- Implement IF-THEN-ELSE logic
  IF v_example = 0 THEN
    DBMS_OUTPUT.PUT_LINE('v_example is zero');
  ELSE
    DBMS_OUTPUT.PUT_LINE('v_example is not zero');
  END IF;

  -- Implement LOOP structure
  FOR i IN 1..3 LOOP
    DBMS_OUTPUT.PUT_LINE('Loop iteration: ' || i);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Exercise completed');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;