-- CREAMOS LA TABLA CON SUS RESPECTIVOS CAMPOS
CREATE TABLE personas(
identificacion VARCHAR(10),
nombre VARCHAR(25),
apellidopaterno VARCHAR(15),
apellidomaterno VARCHAR(15),
fechanacimiento DATE CHECK(fechanacimiento > '2012-01-01'),
municipio VARCHAR(25),
estado VARCHAR(45),
telefono VARCHAR(12),
sexo CHARACTER(1),
sueldo DECIMAL(7,2)
);

-- INTRODUCIMOS LOS VALORES A LOS CAMPOS DE LA BASE DE DATOS
INSERT INTO personas(identificacion,nombre,apellidopaterno,apellidomaterno,fechanacimiento,municipio,estado,telefono,sexo, sueldo)
 VALUES('100012A','Juan','Vazquez','Perez','2020-05-08','Guadalajara', 'Jalisco','1234564343','M', 2500),
('1001B12','Juan','Vazquez','Perez','2021-02-08','Merida','Yucatan','1234564348','M', 1200),
('1002W12','Carlos Miguel','Lopez','Perez','2020-03-15','Morelia','Michoacan','1234564349','M', 800),
('1003Q43','Maria Carlota','SAnchez','Perez','2018-02-02','Guasave','Sinaloa','1234564322','F', 500),
('1004S23','Casandra','Gavilan','Gonzalez','2021-07-25','Monterrey','Nuevo Leon','1234564335','F', 300),
('1005F32','Andrea','Davila','Antonios','2018-06-02','Guadalajara','Jalisco','1234564326','F', 1900),
('1006H78','Joao','Aguiar','Garza','2015-03-15','Morelia','Michoacan','1234564327','M',2300),
('1007Y54','Daniel','Zambrano','Espino','2015-07-18','Toluca','Estado de Mexico','1234564328','M',3500),
('1008W43','Flor','Velazquez','Espinoza','2017-02-08','Guadalajara','Jalisco','1234564345','F',1850),
('1009W23','Celeste','Vazquez','De la O','2015-08-22','Tijuana','Baja California','1234564385','F',4670),
('1010W12','Abigail','Andrade','Beltran','2020-05-12','Guadalajara','Jalisco','1234564373','F',6800),
('1011Q25','Juan Carlos','Espinoza','Campos','2020-05-15','Tijuana','Baja California','1234564399','M',2100),
('1012W25','Dionicio','Espino','Espinoza','2021-06-15','Guadalajara','Jalisco','1234564398','F',500),
('1013Q45','Jose Carlos','Flores','Garcia','2021-07-17','Guasave','Sinaloa','1234564390','M',200),
('1014Y59','Jose Pedro','Valle','Perez','2021-08-01','Mazatlan','Sinaloa','1234564312','M',1600),
('1015P45','Miguel Luis','Flores','Sanchez','2021-01-15','Monterrey','Nuevo Leon','1234564315','M',1600),
('1016H89','JoseMarcelo','Gonzalez','Miranda','2018-05-12','Guadalajara','Jalisco','1234564222','M',2100),
('1017278','Flor Estela','Huerta','Espinosa','2018-07-09','Guadalajara','Jalisco','1234564555','F',900),
('1018Q34','Cristian Jesus','Kilberth','Perez','2018-01-08','Ensenada','Baja California','1234564532','F',1000),
('1019W47','Maria Cecilia','Lopez','Lopez','2045-07-28','Guadalajara','Jalisco','1234564145','F',250),
('1020P30','Juan Alberto','Martinez','Vazquez','2016-07-22','Guadalajara','Jalisco','1234564142','M',350),
('1021Q25','Franchesco Daniel','Nunez','Perez','2017-07-15','Puerto Vallarta','Jalisco','1234564248','M',550),
('1022F78','Laura','Quinonez','Garcia','2020-02-08','Puebla','Puebla','1234564788','F',720);

-- CONSULTA GENERAL A LA BASE DE DATOS, MUESTRA TODA LA BASE DE DATOS
SELECT*FROM personas

-- PERMITE CAMBIAR EL NOMBRE DE LA COLUMNA DE LA TABLA
ALTER TABLE personas RENAME COLUMN estado TO ciudad;

-- ELIMINA LA COLUMNA MUNICIPIO DE LA BASE DE DATOS
ALTER TABLE personas DROP municipio;

-- NOS PERMITE CONTAR CUANTOD REGISTROS TENEMOS POR CIUDAD
SELECT ciudad, COUNT(*) FROM personas GROUP BY ciudad

-- NOS PERMITE CONTAR CUANTOD REGISTROS TENEMOS POR CIUDAD PERO ADEMAS NOS PERMITE COLOCARLE UN ALIAS AL CAMPO CONTADOR
SELECT ciudad, COUNT(*)  AS personasporestados FROM personas GROUP BY ciudad

-- NOS PERMITE ACTUALIZAR DATOS DE UN CAMPO ESPECIFICO BASADO EN UNA CONDICION
UPDATE personas SET ciudad='Bucaramanga' WHERE ciudad='Cartagena';

-- NOS PERMITE ELIMINAR UNA FILA BASADO EN EL NUMERO DE IDENTIFICACION ESPECIFICO
DELETE FROM personas WHERE identificacion='1007Y54';

-- NOS PERMITE MOSTRAR UNA FILA BASADO EN EL NUMERO DE IDENTIFICACION ESPECIFICO
SELECT*FROM personas WHERE identificacion='100012A';

-- NOS PERMITE MOSTRAR LA CANTIDAD DE REGISTROS DE UNA COLUMNA ESPECIFICA EN ORDEN ASCENDENTE
SELECT*FROM personas GROUP BY identificacion;

-- NOS PERMITE MOSTRAR LA CANTIDAD DE REGISTROS DE UNA COLUMNA ESPECIFICA EN ORDEN DESCENDENTE
SELECT*FROM personas GROUP BY identificacion DESC;

-- NOS PERMITES MOSTRAR LOS REGISTROS QUE SEAN DIFERENTE DE UNA COLUMNA
SELECT distinct sexo FROM personas;

-- NOS PERMITE MOSTRAR REGISTROS BASADOS EN DOS CONDICIONES CON LOS OPERADORES LOGICOS
SELECT*FROM personas WHERE ciudad='Cali' OR ciudad='Ibague';