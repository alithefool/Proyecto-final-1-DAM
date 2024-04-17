-- Creamos usuarios
-- Creamos usuario administrador con todos los permisos
Create user Administrador identified by '1234';
GRANT ALL PRIVILEGES ON JuegoDeMesa.* TO 'Administrador';

-- Creamos usuario que solo visauliza datos
Create user Visualizador identified by '1234';
GRANT SELECT ON JuegoDeMesa.* TO 'Visualizador';


