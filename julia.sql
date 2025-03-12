set SERVEROUTPUT on;
set verify OFF;

--loop
DECLARE 
V_CONTADOR NUMBER(2):= 1;
BEGIN 
LOOP
   DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
   V_CONTADOR :=V_CONTADOR+1;
   EXIT WHEN V_CONTADOR > 20;
END LOOP;
END;

--while
DECLARE
    V_CONTADOR NUMBER(2) := 1;
BEGIN
    WHILE V_CONTADOR <= 20 LOOP
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
        V_CONTADOR := V_CONTADOR + 1;
    END LOOP;
END;


--for
BEGIN
    FOR V_CONTADOR IN 1..20 LOOP
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
    END LOOP;
END;


--montar um bloco de programação que realize uma tabuada do numero
DECLARE
    V_NUMERO NUMBER := 10;
    V_RESULTADO NUMBER(2) :=0;
BEGIN
    FOR V_CONTADOR IN 1..10 LOOP
        V_RESULTADO := V_NUMERO * V_CONTADOR;
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || ' x ' || V_CONTADOR || ' = ' || V_RESULTADO);
    END LOOP;
END;


--outro jeito de fazer
DECLARE 
  V_TABUADA NUMBER(3) := &tabuada;
BEGIN
  FOR V_CONTADOR IN 0..10 LOOP
    DBMS_OUTPUT.PUT_LINE(V_TABUADA || ' x ' || V_CONTADOR || ' = ' || V_TABUADA * V_CONTADOR );
    END LOOP;
END;  

--em um intervalo  numerico inteiro informar quantos número são pares e quantos são impares
DECLARE 
  numeros_pares INTEGER := 0;
  numeros_impares INTEGER := 0;
BEGIN
  FOR V_CONTADOR IN 0..10 LOOP
    IF MOD(V_CONTADOR, 2) = 0 THEN
      numeros_pares := numeros_pares + 1;
    ELSE
      numeros_impares := numeros_impares + 1;
    END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE( 'numeros pares: ' || numeros_pares );
    DBMS_OUTPUT.PUT_LINE( 'numeros impares: ' || numeros_impares );
END;  





