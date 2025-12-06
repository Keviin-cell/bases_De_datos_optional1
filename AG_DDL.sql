-- Tabla de reservas de vuelos
CREATE TABLE reserva (
    reserva_id      SERIAL PRIMARY KEY,
    usuario_id      INTEGER NOT NULL,
    mision_id       VARCHAR(100) NOT NULL,
    fecha_reserva   DATE NOT NULL,
    estado_reserva  VARCHAR(100),
    asiento         VARCHAR(12)
);

-- Tabla de cargas que van en cada misión
CREATE TABLE carga (
    carga_id     SERIAL PRIMARY KEY,
    mision_id    VARCHAR(100) NOT NULL,
    tipo_carga   VARCHAR(100),
    descripcion  TEXT,
    peso_kg      DECIMAL(10,2)
);

-- Tabla de notificaciones a los usuarios
CREATE TABLE notificacion (
    notificacion_id SERIAL PRIMARY KEY,
    usuario_id      INTEGER NOT NULL,
    medio_id        VARCHAR(50),
    mensaje         TEXT,
    fecha_envio     TIMESTAMP,
    estado          VARCHAR(30)
);

