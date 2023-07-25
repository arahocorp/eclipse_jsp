CREATE DATABASE TASC

use TASC


CREATE TABLE task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    asunto TEXT NOT NULL,
    descripcion TEXT,
    responsable VARCHAR(100),
    recordatorio DATETIME,
    adjuntos VARCHAR(255),
    etiquetas VARCHAR(255),
    prioridad ENUM('baja', 'media', 'alta', 'urgente') NOT NULL,
    duracion_estimada VARCHAR(50),
    proyecto_area VARCHAR(100),
    estado_avance INT,
    fecha_inicio DATE,
    fecha_entrega DATE NOT NULL,
    fecha_finalizacion DATE,
    comentarios TEXT
);
