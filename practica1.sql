
     -- crearemos una tabla muy simple para probar el poder pl sql
 
    create table dance (id_dance integer, nombre varchar2 (40), edad integer);
    
    --PRENDEMOS EL SERVIDOR EN MODO DE DESARROLLADOR
    
    SET SERVEROUTPUT ON;
    
    --VAMOS A EMPESAR CON UN  BLOQUE PL SQL
    DECLARE
    --AQUI SE DECLARA LAS VARIABLES
    
    EDAD INTEGER;
    YEARS INTEGER;
    BEGIN
    --AQUI VA LA LOGICA DEL PROGRAMA
    
    YEARS:=21;
    EDAD:=YEARS*365;
    
    DBMS_OUTPUT.PUT_LINE(' TU EDAD EN DIAS ES ' || EDAD);
    
    END;
    /







 --CREAR UN BLOQUE PLQSL QUE GENERA 200,000 REGISTROS EN SECUENCIA ASCENDENTE EN LA TABLA DANCE
    --ESTRUCTURA FOR EN UN CICLO FOR
  
    BEGIN 
    
    FOR I IN 1..200000 LOOP
    INSERT INTO DANCE VALUES (I, 'LUIS', 21);
    END LOOP;
    END;
    /
    
    -- HACEMOS UN SELECT PARA VER QUE HIZO
    SELECT * FROM DANCE;
    
    
    --OPERACIONES BASICAS SOBRE UNA BASE DE DATOS.
    --INSERT, BUSCAR POR ID, BUSCAR  TODOS, BORRAR POR ID  = UN LENGUAJE TECNICO A ESTAS OPERACIONES SE LES LLAMA CRUD
    --SISTEMA DE PELICULAS
    
    CREATE table PELICULA (ID_PELICULA INTEGER , 
    TITULO varchar2 (120), 
    SINOPSIS varchar2(120),
    CLASIFICACION varchar2(5),
    constraint PK_ID_PELICULA primary key (ID_PELICULA)
    );
    
    DESCRIBE PELICULA;
    
    CREATE TABLE HORARIO (ID_HORARIO integer, 
    ID_PELICULAHORA integer,
    HORARIO varchar2(8),
    constraint PK_ID_HORARIO primary key (ID_HORARIO),
    CONSTRAINT FK1_ID_PELICULA FOREIGN KEY  (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA)
    ); 
    
    CREATE TABLE SALA (ID_SALA integer,
    ID_PELICULA INTEGER,
    NUM_SALA varchar2 (8),
    constraint PK_ID_SALA primary key (ID_SALA),
    constraint FK2_ID_PELICULA FOREIGN KEY  (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA)
    );
    
    
    
    














