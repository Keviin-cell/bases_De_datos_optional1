-- DML para Reserva

INSERT INTO reserva (usuario_id, mision_id, fecha_reserva, estado_reserva, asiento) VALUES
(1, 'MIS-001', '2025-01-10', 'pendiente',  'A1'),
(2, 'MIS-002', '2025-01-11', 'confirmada', 'A2'),
(3, 'MIS-003', '2025-01-12', 'cancelada',  'B1'),
(4, 'MIS-004', '2025-01-13', 'confirmada', 'B2'),
(5, 'MIS-005', '2025-01-14', 'pendiente',  'C1'),
(16, 'MIS-010', '2025-01-15', 'confirmada', 'C2'),
(27, 'MIS-011', '2025-01-16', 'pendiente',  'D1'),
(38, 'MIS-012', '2025-01-17', 'confirmada', 'D2'),
(49, 'MIS-013', '2025-01-18', 'pendiente',  'E1'),
(51, 'MIS-014', '2025-01-19', 'confirmada', 'E2');


-- DML para Carga

INSERT INTO carga (mision_id, tipo_carga, descripcion, peso_kg) VALUES
('MIS-001', 'científica', 'Muestras de roca lunar',                120.50),
('MIS-001', 'comercial',  'Equipos de fotografía espacial',         80.00),
('MIS-002', 'científica', 'Sensores de radiación cósmica',          45.25),
('MIS-002', 'comercial',  'Kits turísticos para pasajeros VIP',     60.00),
('MIS-012', 'científica', 'Prototipo de laboratorio en microgravedad', 150.75),
('MIS-011', 'comercial',  'Suministros de alimentos liofilizados',  95.30),
('MIS-004', 'científica', 'Módulo de experimentos biológicos',      70.40),
('MIS-010', 'comercial',  'Cápsulas promocionales de souvenirs',    30.00),
('MIS-005', 'científica', 'Instrumentos de medición gravitacional', 55.10),
('MIS-014', 'comercial',  'Carga general de equipaje de pasajeros', 110.00);


-- DML para Notificación

INSERT INTO notificacion (usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 'email',   'Su reserva para la misión MIS-001 está pendiente de confirmación.', '2025-01-05 08:30:00', 'enviada'),
(2, 'email',   'Su reserva para la misión MIS-001 ha sido confirmada.',             '2025-01-06 09:00:00', 'enviada'),
(3, 'sms',     'La reserva para MIS-002 fue cancelada según su solicitud.',        '2025-01-07 10:15:00', 'enviada'),
(4, 'email',   'Recordatorio: misión MIS-002 despega en 3 días.',                  '2025-01-08 11:00:00', 'enviada'),
(5, 'app',     'Actualización: su reserva para MIS-003 está pendiente.',           '2025-01-09 14:20:00', 'leída'),
(16, 'app',     'Su reserva para MIS-003 ha sido confirmada.',                      '2025-01-10 15:45:00', 'leída'),
(27, 'email',   'Nueva misión disponible: MIS-004. Revise opciones de reserva.',    '2025-01-11 08:10:00', 'enviada'),
(38, 'sms',     'Confirmación de reserva para MIS-004.',                            '2025-01-12 09:30:00', 'enviada'),
(49, 'email',   'La misión MIS-005 ha cambiado su hora de lanzamiento.',            '2025-01-13 16:05:00', 'enviada'),
(51, 'app',     'Su reserva para MIS-005 está confirmada. ¡Buen viaje!',           '2025-01-14 18:40:00', 'leída');

