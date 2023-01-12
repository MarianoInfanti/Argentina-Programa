#PRACTICA CONSULTAS
SELECT nombre FROM Usuarios;
SELECT MAX(saldo) FROM Usuarios WHERE sexo = 'M';
SELECT nombre, telefono FROM Usuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');
SELECT COUNT(*) FROM Usuarios WHERE NOT activo OR saldo <= 0;
SELECT usuario FROM Usuarios WHERE nivel IN(1, 2, 3);
SELECT telefono FROM Usuarios WHERE saldo <= 300;
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'NEXTEL';
SELECT compania, COUNT(*) FROM Usuarios GROUP BY compania;
SELECT nivel, COUNT(*) FROM Usuarios GROUP BY nivel;
SELECT usuario FROM Usuarios WHERE nivel = 2;
SELECT email FROM Usuarios WHERE email LIKE '%gmail.com';
SELECT nombre, telefono FROM Usuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('LG', 'SAMSUNG');
SELECT usuario, telefono FROM Usuarios WHERE compania = 'IUSACELL';
SELECT usuario, telefono FROM Usuarios WHERE compania <> "TELCEL";
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'NOKIA';
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'AXEL');
SELECT email FROM Usuarios WHERE email NOT LIKE '%yahoo.com';
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN('TELCEL', 'IUSACELL');
SELECT usuario, telefono FROM Usuarios WHERE compania = 'UNEFON';
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;
SELECT DISTINCT compania FROM Usuarios ORDER BY RAND();
SELECT usuario FROM Usuarios WHERE nivel IN(0, 2);
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'LG';
SELECT usuario FROM Usuarios WHERE nivel IN(1, 3);
SELECT nombre, telefono FROM Usuarios WHERE marca <> "BLACKBERRY";
SELECT usuario FROM Usuarios WHERE nivel = 3;
SELECT usuario FROM Usuarios WHERE nivel = 0;
SELECT usuario FROM Usuarios WHERE nivel = 1;
SELECT sexo, COUNT(*) FROM Usuarios GROUP BY sexo;
SELECT usuario, telefono FROM Usuarios WHERE compania = "AT&T";
SELECT DISTINCT compania FROM Usuarios ORDER BY compania DESC;
SELECT usuario FROM Usuarios WHERE NOT activo;
SELECT telefono FROM Usuarios WHERE saldo <= 0;
SELECT MIN(saldo) FROM Usuarios WHERE sexo = 'H';
SELECT telefono FROM Usuarios WHERE saldo > 300;
SELECT marca, COUNT(*) FROM Usuarios GROUP BY marca;
SELECT nombre, telefono FROM Usuarios WHERE marca <> "LG";
SELECT DISTINCT compania FROM Usuarios ORDER BY compania ASC;
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'UNEFON';
SELECT email FROM Usuarios WHERE email LIKE "%hotmail.com";
SELECT nombre FROM Usuarios WHERE NOT activo OR saldo <= 0;
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'TELCEL');
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;
SELECT DISTINCT marca FROM Usuarios ORDER BY RAND();
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'UNEFON');
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('MOTOROLA', 'NOKIA');
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'TELCEL';


# PRACTICA JOIN
  SELECT p.codigo,p.nombre FROM provincias AS p
  LEFT JOIN clientes AS c
  ON c.codigoProvincia=p.codigo
  WHERE c.codigoprovincia IS NULL;
  
  SELECT DISTINCT p.codigo,p.nombre FROM provincias AS p
  LEFT JOIN clientes AS c
  ON c.codigoProvincia=p.codigo
  WHERE c.codigoprovincia IS NOT NULL;