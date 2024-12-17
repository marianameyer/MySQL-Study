--ON DELETE

--OBS.: Os triggers devem ser criados no terminal do 
--MySQL. Aqui, não rodaram.

--Criando um trigger para avisar quando um funcionário for
--adicionado à tabela employee
CREATE TABLE trigger_test (
    message VARCHAR(100)
);

SELECT * FROM trigger_test;

--Acionando o trigger
DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES ('added new employee');
    END$$
DELIMITER ;

--Adicionando novo funcionário
INSERT INTO employee VALUES
(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM employee;

--Criando outro trigger
DELIMITER $$
CREATE 
    TRIGGER my_trigger_2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES (NEW.first_name);
    END$$
DELIMITER ;

--Adicionando novo funcionário e verificando a tabela
--trigger_tes
INSERT INTO employee VALUES 
(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

--Terceiro trigger
DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test VALUES('added female');
         ELSE
               INSERT INTO trigger_test VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;

--Inserindo funcionária
INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

SELECT * FROM trigger_test;

DROP TRIGGER my_trigger3;
DROP TABLE trigger_test;