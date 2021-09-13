CREATE TABLE `usuarios` (
`usuarios_id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
`usuarios_nombre` VARCHAR(100) NOT NULL,
`usuarios_mail` VARCHAR(50) NOT NULL,
PRIMARY KEY (`usuarios_id`)
);

CREATE TABLE `notas` (
`notas_id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
`notas_titulo` VARCHAR(100) NOT NULL,
`notas_fecha_creacion` DATETIME NOT NULL,
`notas_fecha_modificacion` DATETIME NOT NULL,
`notas_descripcion` TEXT NOT NULL,
`notas_eliminable` INT NOT NULL,
`notas_usuarios_id` INT UNSIGNED NOT NULL,
PRIMARY KEY (`notas_id`),
FOREIGN KEY (`notas_usuarios_id`) REFERENCES `usuarios` (`usuarios_id`) ON DELETE CASCADE
);

CREATE TABLE `categorias` (
`categorias_id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
`categorias_nombre` VARCHAR(150) NOT NULL,
PRIMARY KEY (`categorias_id`)
);

CREATE TABLE `notas_categorias` (
`not_cat_id` INT UNSIGNED AUTO_INCREMENT NOT NULL,
`not_cat_notas_id` INT UNSIGNED NOT NULL,
`not_cat_categorias_id` INT UNSIGNED NOT NULL,
PRIMARY KEY (`not_cat_id`),
FOREIGN KEY (`not_cat_notas_id`) REFERENCES `notas` (`notas_id`) ON DELETE CASCADE,
FOREIGN KEY (`not_cat_categorias_id`) REFERENCES `categorias` (`categorias_id`) ON DELETE CASCADE
);


INSERT INTO categorias (categorias_id, categorias_nombre)
VALUES (DEFAULT, 'Trabajo'), (DEFAULT, 'Programacion') , (DEFAULT, 'Casa') , (DEFAULT, 'Familia'), (DEFAULT, 'Deportes'), (DEFAULT, 'Hobbies');

INSERT INTO usuarios (usuarios_id , usuarios_nombre, usuarios_mail)
VALUES (DEFAULT, 'Gina', 'gina@gmail.com'),(DEFAULT, 'Sole', 'sole@gmail.com') , (DEFAULT, 'Sebas', 'sebas@gmail.com') , (DEFAULT, 'Maria', 'maria@gmail.com');

INSERT INTO notas (notas_id, notas_titulo, notas_fecha_creacion, notas_fecha_modificacion, notas_descripcion, notas_eliminable, notas_usuarios_id)
VALUES (DEFAULT, 'Hacienda', '2021/09/10 00:00:00' , '2021/09/10 00:00:30', 'Tengo que hacer el DUT' , 0 , 4 ) , (DEFAULT, 'Deberes', '2021/09/01 00:00:00' , '2021/09/5 00:00:30', 'Hacer los deberes para la proxima clase' , 1 , 4 ) , (DEFAULT, 'Pilates', '2021/08/01 00:00:00' , '2021/08/5 00:00:30', 'Anotarme para hacer piltares' , 0 , 4 ),(DEFAULT, 'El Loom', '2019/08/15 10:50:55' , '2021/07/10 08:30:15', 'Melodia de flauta, estudiar' , 1 , 3 ), (DEFAULT, 'EL Dig', '2018/05/06 12:53:01' , '2021/11/13 09:54:55', 'Buscar en el poso la piedra magica' , 1 , 3 ), (DEFAULT, 'Autos locos', '2021/08/12 09:50:55' , '2021/10/10 07:30:15', 'Melodia de flauta, estudiar' , 1 , 3 ) , (DEFAULT, 'Juegos', '1998/09/10 00:03:00' , '2001/09/10 08:00:30', 'Hay que llevar los dados' , 1 , 2 ) , (DEFAULT, 'Aviones', '2000/09/10 10:00:00' , '2020/09/10 00:00:30', 'Subir la licitacion' , 0 , 2 ) , (DEFAULT, 'Cumpleaños', '2021/09/10 07:30:00' , '1987/09/10 00:10:30', 'Llevar la torta!' , 0 , 2 ),(DEFAULT, 'Puntitos', '2000/09/10 00:09:00' , '2000/09/10 00:09:00',  'Sacar fotos souvenirs' , 0 , 1 ), (DEFAULT, 'Tortas', '2011/04/16 00:29:01', '2000/09/10 00:09:00' , 'Hacer torta Sacher' , 0 , 1 ),  (DEFAULT, 'Casa', '2019/04/16 00:49:01' , '2000/09/10 00:09:00', 'Limpieza profunda' , 0 , 1 );

INSERT INTO notas_categorias (not_cat_id, not_cat_notas_id, not_cat_categorias_id)
VALUES (DEFAULT, 1 , 1), (DEFAULT, 2 , 2) , (DEFAULT, 2 , 5) , (DEFAULT, 2 , 6) ,  (DEFAULT, 4 , 2) , (DEFAULT, 4 , 6) , (DEFAULT, 5 , 1) , (DEFAULT, 6 , 4), (DEFAULT, 6 , 6) , (DEFAULT, 7 , 3) , (DEFAULT, 7 , 4) , (DEFAULT, 8 , 1) , (DEFAULT, 9 , 4) , (DEFAULT, 10 , 1) , (DEFAULT, 11 , 1) , (DEFAULT, 11 , 6), (DEFAULT, 12 , 3) , (DEFAULT, 12 , 6);
