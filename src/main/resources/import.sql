INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (1,'Vía oral', 'Vía digestiva')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (2,'Vía sublingual', 'Vía digestiva')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (3,'Vía gastroentérica', 'Vía digestiva')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (4,'Vía rectal', 'Vía digestiva')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (5,'Intravenosa', 'Vía parenteral')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (6,'Intraarterial', 'Vía parenteral')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (7,'Intramuscular', 'Vía parenteral')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (8,'Subcutánea', 'Vía parenteral')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (9,'Vía intratraqueal', 'Vía respiratoria')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (10,'Vía intraalveolar', 'Vía respiratoria')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (11,'Conjuntival', 'Vía tópica')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (12,'Oral', 'Vía tópica')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (13,'Urogenital', 'Vía tópica')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (14,'Vía oftálmica', 'Vía oftálmica')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (15,'Vía ótica', 'Vía ótica')
INSERT INTO VIAADMINISTRACION (IDVIAADMINISTRACION, NOMBRE, CATEGORIA) VALUES (16,'Vía percutánea', 'Vía percutánea')

INSERT INTO MEDICAMENTO (IDMEDICAMENTO, COMPONENTEACTIVO, CONCENTRACION, NOMBRECOMERCIAL, PRECIO, FECHACADUCIDAD, IDVIAADMINISTRACION) VALUES (1,'Parecetamol - Pseudoefedrina Clorhidrato - Clorfenamina Maleato', '100 ml', 'TrioVal', 3.50, NULL, 1)
INSERT INTO MEDICAMENTO (IDMEDICAMENTO, COMPONENTEACTIVO, CONCENTRACION, NOMBRECOMERCIAL, PRECIO, FECHACADUCIDAD, IDVIAADMINISTRACION) VALUES (2,'Ibuprofeno', '120 ml', 'Buprex Forte', 5.50, NULL, 1)
INSERT INTO MEDICAMENTO (IDMEDICAMENTO, COMPONENTEACTIVO, CONCENTRACION, NOMBRECOMERCIAL, PRECIO, FECHACADUCIDAD, IDVIAADMINISTRACION) VALUES (3,'', 'Q10', 'Immuvit Plus Q10', 15.00, NULL, 1)
INSERT INTO MEDICAMENTO (IDMEDICAMENTO, COMPONENTEACTIVO, CONCENTRACION, NOMBRECOMERCIAL, PRECIO, FECHACADUCIDAD, IDVIAADMINISTRACION) VALUES (4,'Mometasona Furoato - Clorhidrato Azelastina', '50mcg + 140mcg', 'Momate AZ', 7.50, NULL, 10)

INSERT INTO MEDICO VALUES(1,'Angeloni Miguel','0701929015','angelonimiguel@gmail.com','1967-03-07','Cuesta Aquin','0987654321','Traumatologo','Si')
INSERT INTO PACIENTE VALUES(2,'Cuesta Bustamante','0712345678','carlos@hotmail.com','1994-11-28','Carlos Miguel','0987850396','Ninguna','O+')