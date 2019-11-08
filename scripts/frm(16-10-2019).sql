
CREATE TABLE `frm_formularios` (
  `form_id` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `descripcion` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `empr_id` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `frm_formularios`
--

INSERT INTO `frm_formularios` (`form_id`, `nombre`, `descripcion`, `empr_id`, `fec_alta`, `eliminado`) VALUES
(1, 'Formulario Usuario', '-', 1, '2019-08-17 14:24:38', 0),
(2, 'Evaluacion Sector por Operario', '-', NULL, '2019-09-16 12:52:58', 0),
(3, 'Evaluacion de Desempeño Colaborador', '-', NULL, '2019-09-16 12:53:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frm_instancias_formularios`
--

CREATE TABLE `frm_instancias_formularios` (
  `id` int(11) NOT NULL,
  `label` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requerido` tinyint(4) DEFAULT NULL,
  `tida_id` int(11) DEFAULT NULL,
  `valo_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `aux` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `frm_instancias_formularios`
--

INSERT INTO `frm_instancias_formularios` (`id`, `label`, `name`, `valor`, `requerido`, `tida_id`, `valo_id`, `info_id`, `form_id`, `orden`, `aux`, `fec_alta`, `eliminado`) VALUES
(1, 'Zona: Exterior', NULL, NULL, NULL, 25, NULL, 1, 2, 1, NULL, '2019-10-16 16:15:49', 0),
(2, 'Tareas', NULL, NULL, NULL, 26, NULL, 1, 2, 2, NULL, '2019-10-16 16:15:49', 0),
(3, 'Zona: Interior', '', NULL, NULL, 25, NULL, 1, 2, 6, NULL, '2019-10-16 16:15:49', 0),
(4, 'Tareas', '', NULL, NULL, 26, NULL, 1, 2, 7, NULL, '2019-10-16 16:15:49', 0),
(5, 'Zona: Transito', NULL, NULL, NULL, 25, NULL, 1, 2, 13, NULL, '2019-10-16 16:15:49', 0),
(6, 'Tareas', NULL, NULL, NULL, 26, NULL, 1, 2, 14, NULL, '2019-10-16 16:15:49', 0),
(7, 'Zona: Humeda', NULL, NULL, NULL, 25, '', 1, 2, 21, NULL, '2019-10-16 16:15:49', 0),
(8, 'Tareas', NULL, NULL, NULL, 26, NULL, 1, 2, 22, NULL, '2019-10-16 16:15:49', 0),
(9, 'Rejas y portones', 'ext_rej_por', '1', NULL, 4, 'calificacion_sim', 1, 2, 3, NULL, '2019-10-16 16:15:49', 0),
(10, 'Espacios verdes', 'ext_esp_ver', '1', NULL, 4, 'calificacion_sim', 1, 2, 3, NULL, '2019-10-16 16:15:49', 0),
(11, 'Veredas', 'ext_veredas', '2', NULL, 4, 'calificacion_sim', 1, 2, 4, NULL, '2019-10-16 16:15:49', 0),
(12, 'Cartelería, luminarias, paredes y cornisas', 'ext_clpc', '3', NULL, 4, 'calificacion_sim', 1, 2, 5, NULL, '2019-10-16 16:15:49', 0),
(13, 'Observaciones', 'hum_obs', 'aaaa', NULL, 9, NULL, 1, 2, 6, NULL, '2019-10-16 16:15:49', 0),
(14, 'Telas de araña', 'int_tel', '4', NULL, 4, 'calificacion_sim', 1, 2, 8, NULL, '2019-10-16 16:15:49', 0),
(15, 'Cerramientos, herrajes, paredes, vidrios y es', 'int_chpve', '2', NULL, 4, 'calificacion_sim', 1, 2, 9, NULL, '2019-10-16 16:15:49', 0),
(16, 'Cestos de basura', 'int_cb', '3', NULL, 4, 'calificacion_sim', 1, 2, 10, NULL, '2019-10-16 16:15:49', 0),
(17, 'Pisos', 'int_pisos', '3', NULL, 4, 'calificacion_sim', 1, 2, 11, NULL, '2019-10-16 16:15:49', 0),
(18, 'Odorización', 'int_od', '', NULL, 4, 'calificacion_sim', 1, 2, 12, NULL, '2019-10-16 16:15:49', 0),
(19, 'Observaciones', 'tra_obs', 'asd', NULL, 9, NULL, 1, 2, 12, NULL, '2019-10-16 16:15:49', 0),
(20, 'Telas de araña', 'tra_tel', '2', NULL, 4, 'calificacion_sim', 1, 2, 15, NULL, '2019-10-16 16:15:49', 0),
(21, 'Cerramientos, herrajes, paredes, vidrios y es', 'tra_chpve', '3', NULL, 4, 'calificacion_sim', 1, 2, 16, NULL, '2019-10-16 16:15:49', 0),
(22, 'Mobiliario y adornos', 'tra_ma', '4', NULL, 4, 'calificacion_sim', 1, 2, 17, NULL, '2019-10-16 16:15:49', 0),
(23, 'Cestos de basura', 'tra_cb', '3', NULL, 4, 'calificacion_sim', 1, 2, 18, NULL, '2019-10-16 16:15:49', 0),
(24, 'Pisos', 'tra_pisos', '3', NULL, 4, 'calificacion_sim', 1, 2, 19, NULL, '2019-10-16 16:15:49', 0),
(25, 'Observaciones', 'int_obs', 'aaaaa', NULL, 9, NULL, 1, 2, 20, NULL, '2019-10-16 16:15:49', 0),
(26, 'Odorización', 'tra_od', '4', NULL, 4, 'calificacion_sim', 1, 2, 20, NULL, '2019-10-16 16:15:49', 0),
(27, 'Telas de araña', 'hum_tel', '2', NULL, 4, 'calificacion_sim', 1, 2, 23, NULL, '2019-10-16 16:15:49', 0),
(28, 'Cerramientos, herrajes, paredes, vidrios y es', 'hum_chpve', '3', NULL, 4, 'calificacion_sim', 1, 2, 24, NULL, '2019-10-16 16:15:49', 0),
(29, 'Azulejos', 'hum_azu', '5', NULL, 4, 'calificacion_sim', 1, 2, 25, NULL, '2019-10-16 16:15:49', 0),
(30, 'Sanitarios, lavamanos y mesadas', 'hum_slm', '3', NULL, 4, 'calificacion_sim', 1, 2, 26, NULL, '2019-10-16 16:15:49', 0),
(31, 'Mobiliario y adornos', 'hum_ma', '4', NULL, 4, 'calificacion_sim', 1, 2, 27, NULL, '2019-10-16 16:15:49', 0),
(32, 'Cestos de basura', 'hum_cv', '3', NULL, 4, 'calificacion_sim', 1, 2, 28, NULL, '2019-10-16 16:15:49', 0),
(33, 'Pisos', 'hum_pisos', '2', NULL, 4, 'calificacion_sim', 1, 2, 29, NULL, '2019-10-16 16:15:49', 0),
(34, 'Reposición de descartables', 'hum_rep', '4', NULL, 4, 'calificacion_sim', 1, 2, 30, NULL, '2019-10-16 16:15:49', 0),
(35, 'Odorización', 'hum_od', '5', NULL, 4, 'calificacion_sim', 1, 2, 31, NULL, '2019-10-16 16:15:49', 0),
(36, 'Observaciones', 'ext_obs', 'BBBBB', NULL, 9, NULL, 1, 2, 32, NULL, '2019-10-16 16:15:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frm_items`
--

CREATE TABLE `frm_items` (
  `item_id` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `requerido` tinyint(4) DEFAULT NULL,
  `tida_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valo_id` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0',
  `aux` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `frm_items`
--

INSERT INTO `frm_items` (`item_id`, `label`, `name`, `requerido`, `tida_id`, `valo_id`, `form_id`, `orden`, `fec_alta`, `eliminado`, `aux`) VALUES
(1, 'Complete todos los campos del formulario *', NULL, NULL, '2', NULL, 1, 1, '2019-08-17 14:27:38', 0, NULL),
(2, 'Nombre', 'nombre', 1, '3', NULL, 1, 2, '2019-08-17 14:28:46', 0, NULL),
(3, 'Apellido', 'apellido', 1, '3', NULL, 1, 3, '2019-08-17 14:28:46', 0, NULL),
(4, 'Fecha Nacimiento', 'fecha_nacimiento', 1, '5', NULL, 1, 4, '2019-08-17 14:32:37', 0, NULL),
(5, 'Email', 'email', 1, '3', NULL, 1, 5, '2019-08-17 14:34:08', 0, NULL),
(6, 'Seleccionar Provincia', 'provincia', 1, '4', 'provincias', 1, 6, '2019-08-17 14:34:57', 0, NULL),
(7, 'Seleccionar Sexo', 'sexo', 1, '7', 'sexos', 1, 7, '2019-08-17 15:40:06', 0, NULL),
(8, 'Seleccionar Opcion', 'contrato', 1, '6', 'contratos', 1, 8, '2019-08-17 15:40:06', 0, NULL),
(9, 'Adjuntar Archivo', 'pdf', 1, '8', NULL, 1, 9, '2019-08-17 15:42:37', 0, NULL),
(10, 'Observaciones', 'observaciones', 1, '9', NULL, 1, 10, '2019-08-17 15:42:37', 0, NULL),
(11, 'Zona: Exterior', NULL, NULL, '25', NULL, 2, 1, '2019-09-16 12:54:31', 0, NULL),
(12, 'Tareas', NULL, NULL, '26', NULL, 2, 2, '2019-09-16 12:54:31', 0, NULL),
(13, 'Rejas y portones', 'ext_rej_por', NULL, '4', 'calificacion_sim', 2, 3, '2019-09-16 12:54:31', 0, NULL),
(14, 'Espacios verdes', 'ext_esp_ver', NULL, '4', 'calificacion_sim', 2, 3, '2019-09-16 12:54:31', 0, NULL),
(15, 'Veredas', 'ext_veredas', NULL, '4', 'calificacion_sim', 2, 4, '2019-09-16 12:54:31', 0, NULL),
(16, 'Cartelería, luminarias, paredes y cornisas', 'ext_clpc', NULL, '4', 'calificacion_sim', 2, 5, '2019-09-16 12:54:31', 0, NULL),
(17, 'Zona: Interior', '', NULL, '25', NULL, 2, 6, '2019-09-16 12:54:31', 0, NULL),
(18, 'Tareas', '', NULL, '26', NULL, 2, 7, '2019-09-16 12:54:31', 0, NULL),
(19, 'Telas de araña', 'int_tel', NULL, '4', 'calificacion_sim', 2, 8, '2019-09-16 13:20:57', 0, NULL),
(20, 'Cerramientos, herrajes, paredes, vidrios y espejos', 'int_chpve', NULL, '4', 'calificacion_sim', 2, 9, '2019-09-16 13:20:57', 0, NULL),
(21, 'Cestos de basura', 'int_cb', NULL, '4', 'calificacion_sim', 2, 10, '2019-09-16 13:20:57', 0, NULL),
(22, 'Pisos', 'int_pisos', NULL, '4', 'calificacion_sim', 2, 11, '2019-09-16 13:20:57', 0, NULL),
(23, 'Odorización', 'int_od', NULL, '4', 'calificacion_sim', 2, 12, '2019-09-16 13:20:57', 0, NULL),
(24, 'Zona: Transito', NULL, NULL, '25', NULL, 2, 13, '2019-09-16 13:29:30', 0, NULL),
(25, 'Tareas', NULL, NULL, '26', NULL, 2, 14, '2019-09-16 13:29:30', 0, NULL),
(26, 'Telas de araña', 'tra_tel', NULL, '4', 'calificacion_sim', 2, 15, '2019-09-16 13:29:30', 0, NULL),
(27, 'Cerramientos, herrajes, paredes, vidrios y espejos', 'tra_chpve', NULL, '4', 'calificacion_sim', 2, 16, '2019-09-16 13:29:30', 0, NULL),
(28, 'Mobiliario y adornos', 'tra_ma', NULL, '4', 'calificacion_sim', 2, 17, '2019-09-16 13:29:30', 0, NULL),
(29, 'Cestos de basura', 'tra_cb', NULL, '4', 'calificacion_sim', 2, 18, '2019-09-16 13:29:30', 0, NULL),
(30, 'Pisos', 'tra_pisos', NULL, '4', 'calificacion_sim', 2, 19, '2019-09-16 13:29:30', 0, NULL),
(31, 'Odorización', 'tra_od', NULL, '4', 'calificacion_sim', 2, 20, '2019-09-16 13:29:30', 0, NULL),
(32, 'Zona: Humeda', NULL, NULL, '25', '', 2, 21, '2019-09-16 14:29:34', 0, NULL),
(33, 'Tareas', NULL, NULL, '26', NULL, 2, 22, '2019-09-16 14:29:34', 0, NULL),
(34, 'Telas de araña', 'hum_tel', NULL, '4', 'calificacion_sim', 2, 23, '2019-09-16 14:29:34', 0, NULL),
(35, 'Cerramientos, herrajes, paredes, vidrios y espejos', 'hum_chpve', NULL, '4', 'calificacion_sim', 2, 24, '2019-09-16 14:29:34', 0, NULL),
(36, 'Azulejos', 'hum_azu', NULL, '4', 'calificacion_sim', 2, 25, '2019-09-16 14:29:34', 0, NULL),
(37, 'Sanitarios, lavamanos y mesadas', 'hum_slm', NULL, '4', 'calificacion_sim', 2, 26, '2019-09-16 14:29:34', 0, NULL),
(38, 'Mobiliario y adornos', 'hum_ma', NULL, '4', 'calificacion_sim', 2, 27, '2019-09-16 14:29:34', 0, NULL),
(39, 'Cestos de basura', 'hum_cv', NULL, '4', 'calificacion_sim', 2, 28, '2019-09-16 14:29:34', 0, NULL),
(40, 'Pisos', 'hum_pisos', NULL, '4', 'calificacion_sim', 2, 29, '2019-09-16 14:33:02', 0, NULL),
(41, 'Reposición de descartables', 'hum_rep', NULL, '4', 'calificacion_sim', 2, 30, '2019-09-16 14:33:02', 0, NULL),
(42, 'Odorización', 'hum_od', NULL, '4', 'calificacion_sim', 2, 31, '2019-09-16 14:33:02', 0, NULL),
(43, 'Observaciones', 'ext_obs', NULL, '9', NULL, 2, 32, '2019-09-16 14:33:02', 0, NULL),
(44, 'Observaciones', 'int_obs', NULL, '9', NULL, 2, 20, '2019-09-16 14:37:48', 0, NULL),
(45, 'Observaciones', 'tra_obs', NULL, '9', NULL, 2, 12, '2019-09-16 14:37:48', 0, NULL),
(46, 'Observaciones', 'hum_obs', NULL, '9', NULL, 2, 6, '2019-09-16 14:37:48', 0, NULL),
(47, 'Informacion del Empleado', NULL, NULL, '25', NULL, 3, 1, '2019-09-16 15:19:04', 0, NULL),
(48, 'Nombre y Apellido', 'nom_ape', NULL, '3', NULL, 3, 2, '2019-09-16 15:19:04', 0, NULL),
(49, 'Puesto', 'puesto', NULL, '3', NULL, 3, 3, '2019-09-16 15:19:04', 0, NULL),
(50, 'Establecimiento donde desarrolla sus tareas', 'est', NULL, '3', NULL, 3, 4, '2019-09-16 15:19:04', 0, NULL),
(51, 'Supervisor', 'supervisor', NULL, '3', NULL, 3, 5, '2019-09-16 15:19:04', 0, NULL),
(52, 'Fecha de Evaluación', 'fecha_eval', NULL, '5', NULL, 3, 6, '2019-09-16 15:19:04', 0, NULL),
(53, 'Cuestionario', NULL, NULL, '26', NULL, 3, 7, '2019-09-16 15:19:04', 0, NULL),
(54, '1 -  Presencia Fisica', NULL, NULL, '26', NULL, 3, 8, '2019-09-16 15:19:04', 0, NULL),
(55, 'a. Aseo Personal ', 'aseo_personal', NULL, '4', 'calificacion_sim', 3, 9, '2019-09-16 15:19:04', 0, NULL),
(56, 'b. Cuidado y Mantenimiento de Ambo.', 'cui_man_ambo', NULL, '4', 'calificacion_sim', 3, 10, '2019-09-16 15:19:04', 0, NULL),
(57, 'c. Cuidado y mantenimiento de EPP ', 'cui_man_epp', NULL, '4', 'calificacion_sim', 3, 11, '2019-09-16 15:19:04', 0, NULL),
(58, 'Promedio', NULL, NULL, '3', NULL, 3, 12, '2019-09-16 15:19:04', 0, NULL),
(59, '2 - Calidad y productividad', NULL, NULL, '26', NULL, 3, 13, '2019-09-16 15:19:04', 0, NULL),
(60, 'a. Precisión y calidad del trabajo realizado.', 'pres_cali', NULL, '4', 'calificacion_sim', 3, 14, '2019-09-16 15:19:04', 0, NULL),
(61, 'b. Organización del trabajo en tiempo y forma.', 'org_tra', NULL, '4', 'calificacion_sim', 3, 15, '2019-09-16 15:33:11', 0, NULL),
(62, 'c. Cuidado de herramientas y equipo.	', 'cui_herr_equ', NULL, '4', 'calificacion_sim', 3, 16, '2019-09-16 15:33:11', 0, NULL),
(63, 'Promedio', 'cal_pro_pro', NULL, '3', NULL, 3, 17, '2019-09-16 15:33:11', 0, NULL),
(64, '3 - Conocimiento', NULL, NULL, '26', NULL, 3, 18, '2019-09-16 15:39:16', 0, NULL),
(65, 'a. Nivel de experiencia y conocimiento técnico para el trabajo requerido. 	', 'nivel_exp', NULL, '4', 'calificacion_sim', 3, 19, '2019-09-16 15:39:16', 0, NULL),
(66, 'b. Uso y conocimiento de métodos y procedimientos.', 'conmepro', NULL, '4', 'calificacion_sim', 3, 20, '2019-09-16 15:39:16', 0, NULL),
(67, 'c. Uso y conocimiento de herramientas.	', 'con_herr', NULL, '4', 'calificacion_sim', 3, 21, '2019-09-16 15:39:16', 0, NULL),
(68, 'd. Puede desempeñarse con poca o ninguna ayuda.', 'desempeno', NULL, '4', 'calificacion_sim', 3, 22, '2019-09-16 15:39:16', 0, NULL),
(69, 'e. Capacidad de enseñar/entrenar a otros.	', 'cap_enseñar', NULL, '4', 'calificacion_sim', 3, 23, '2019-09-16 15:39:16', 0, NULL),
(70, 'Promedio', 'con_pro', NULL, '3', NULL, 3, 24, '2019-09-16 15:39:16', 0, NULL),
(72, '4 - Compromiso y presentismo', NULL, NULL, '26', NULL, 3, 25, '2019-09-16 15:43:40', 0, NULL),
(73, 'a. Trabaja sin necesidad de supervisión.', 'tranesu', NULL, '4', NULL, 3, 26, '2019-09-16 15:43:40', 0, NULL),
(74, 'b. Se esfuerza más si la situación lo requiere.', 'esfuerzo', NULL, '4', NULL, 3, 27, '2019-09-16 15:43:40', 0, NULL),
(75, 'c. Puntualidad.', 'puntualidad', NULL, '4', NULL, 3, 28, '2019-09-16 15:43:40', 0, NULL),
(76, 'd. Presentismo.', 'presentismo', NULL, '4', NULL, 3, 29, '2019-09-16 15:43:40', 0, NULL),
(77, 'Promedio', 'com_pre_pro', NULL, '3', NULL, 3, 30, '2019-09-16 15:43:40', 0, NULL),
(78, '5 - Iniciativa / Liderazgo', NULL, NULL, '26', NULL, 3, 31, '2019-09-16 15:43:40', 0, NULL),
(79, 'a. Cuando completa sus tareas, busca nuevas asignaciones.', 'predisposicion', NULL, '4', NULL, 3, 32, '2019-09-16 15:43:40', 0, NULL),
(80, 'b. Elige prioridades de forma eficiente. ', 'priodidades', NULL, '4', NULL, 3, 33, '2019-09-16 15:43:40', 0, NULL),
(81, 'c. Sugiere mejoras. ', 'sug_mejoras', NULL, '4', NULL, 3, 34, '2019-09-16 15:43:40', 0, NULL),
(82, 'd. Identifica errores y trabaja para arreglarlos.', 'reconoce_error', NULL, '4', NULL, 3, 35, '2019-09-16 15:43:40', 0, NULL),
(83, 'e. Motiva y ayuda a los demás.', 'motiva_ayuda', NULL, '4', NULL, 3, 36, '2019-09-16 15:43:40', 0, NULL),
(84, 'Promedio', 'ini_lid_pro', NULL, '3', NULL, 3, 37, '2019-09-16 15:43:40', 0, NULL),
(85, '6 - Trabajo en equipo', NULL, NULL, '26', NULL, 3, 38, '2019-09-16 15:43:40', 0, NULL),
(86, 'a. Trabaja fluidamente con supervisores, pares y subordinados. ', 'trabajo_fluido', NULL, '4', NULL, 3, 39, '2019-09-16 15:43:40', 0, NULL),
(87, 'b. Tiene una actitud positiva y proactiva. ', 'actitud', NULL, '4', NULL, 3, 40, '2019-09-16 15:44:29', 0, NULL),
(88, 'c. Promueve el trabajo en equipo.', 'trab_equipo', NULL, '4', NULL, 3, 41, '2019-09-16 15:44:29', 0, NULL),
(89, 'Promedio', 'trab_equipo_prom', NULL, '3', NULL, 3, 42, '2019-09-16 15:44:29', 0, NULL),
(90, 'Comentarios', NULL, NULL, '26', NULL, 3, 43, '2019-09-16 15:44:29', 0, NULL),
(91, 'Comentarios del empleado', 'com_emp', NULL, '9', NULL, 3, 44, '2019-09-16 15:44:29', 0, NULL),
(92, 'Comentarios y recomendaciones del supervisor', 'com_sup', NULL, '9', NULL, 3, 45, '2019-09-16 15:44:29', 0, NULL),
(93, 'Metas y objetivos del empleado para la próxima evaluación ', 'com_metas_obj', NULL, '9', NULL, 3, 46, '2019-09-16 15:44:29', 0, NULL),
(94, 'Puntuación general de desempeño', '', NULL, '26', NULL, 3, 47, '2019-09-16 16:16:44', 0, NULL),
(95, '(Dividir la cantidad total de puntos por 5)', NULL, NULL, '2', NULL, 3, 48, '2019-09-16 16:16:44', 0, NULL),
(96, 'Tener en cuenta que inferior a 3:', NULL, NULL, '2', NULL, 3, 49, '2019-09-16 16:16:44', 0, NULL),
(97, '-No podrán solicitar adelantos de sueldos', NULL, NULL, '2', NULL, 3, 50, '2019-09-16 16:16:44', 0, NULL),
(98, '-No podrán postularse a búsquedas internas', NULL, NULL, '2', NULL, 3, 51, '2019-09-16 16:16:44', 0, NULL),
(100, 'Promedio Total', 'promedio_total', NULL, '3', NULL, 3, 52, '2019-09-16 16:53:30', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `utl_tablas`
--

CREATE TABLE `utl_tablas` (
  `tabl_id` int(11) NOT NULL,
  `tabla` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fec_alta` datetime DEFAULT CURRENT_TIMESTAMP,
  `eliminado` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Volcado de datos para la tabla `utl_tablas`
--

INSERT INTO `utl_tablas` (`tabl_id`, `tabla`, `valor`, `descripcion`, `fec_alta`, `eliminado`) VALUES
(1, 'tipos_datos', 'titulo1', NULL, '2019-08-21 13:50:49', 0),
(2, 'tipos_datos', 'comentario', NULL, '2019-08-21 13:50:49', 0),
(3, 'tipos_datos', 'input', NULL, '2019-08-21 13:50:49', 0),
(4, 'tipos_datos', 'select', NULL, '2019-08-21 13:50:49', 0),
(5, 'tipos_datos', 'date', NULL, '2019-08-21 13:50:49', 0),
(6, 'tipos_datos', 'check', NULL, '2019-08-21 13:50:49', 0),
(7, 'tipos_datos', 'radio', NULL, '2019-08-21 13:50:49', 0),
(8, 'tipos_datos', 'file', NULL, '2019-08-21 13:50:49', 0),
(9, 'tipos_datos', 'textarea', NULL, '2019-08-21 13:50:49', 0),
(10, 'provincias', 'San Juan', NULL, '2019-08-17 15:33:52', 0),
(11, 'provincias', 'Mendoza', NULL, '2019-08-17 15:33:52', 0),
(12, 'provincias', 'San Luis', NULL, '2019-08-17 15:33:52', 0),
(13, 'sexos', 'Hombre', NULL, '2019-08-17 16:28:10', 0),
(14, 'sexos', 'Mujer', NULL, '2019-08-17 16:28:10', 0),
(15, 'sexos', 'No Binario', NULL, '2019-08-17 16:28:10', 0),
(16, 'contratos', 'Acepto los Terminos y Condiciones del Servicio', NULL, '2019-08-17 17:01:22', 0),
(17, 'contratos', 'Enviar Emails', NULL, '2019-08-17 17:01:22', 0),
(21, 'unidad', 'KM', 'KILOMETROS', '2019-04-23 18:25:47', 0),
(22, 'unidad', 'UN', 'UNIDAD', '2019-05-24 00:56:16', 1),
(23, 'unidad', NULL, 'asd', '2019-06-04 17:04:45', 0),
(24, 'unidad', NULL, 'dfg', '2019-06-04 17:05:34', 1),
(25, 'tipos_datos', 'titulo2', NULL, '2019-09-16 13:07:02', 0),
(26, 'tipos_datos', 'titulo3', NULL, '2019-09-16 13:07:02', 0),
(27, 'calificacion_sim', '1', '1 - Muy Insatisfactorio', '2019-09-16 13:10:08', 0),
(28, 'calificacion_sim', '2', '2 - Insatisfactorio', '2019-09-16 13:10:08', 0),
(29, 'calificacion_sim', '3', '3 - Satisfactorio', '2019-09-16 13:10:08', 0),
(30, 'calificacion_sim', '4', '4 - Muy satisfactorio', '2019-09-16 13:10:08', 0),
(31, 'calificacion_sim', '5', '5 - Sobresaliente', '2019-09-16 13:10:08', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `frm_formularios`
--
ALTER TABLE `frm_formularios`
  ADD PRIMARY KEY (`form_id`);

--
-- Indices de la tabla `frm_instancias_formularios`
--
ALTER TABLE `frm_instancias_formularios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frm_items`
--
ALTER TABLE `frm_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indices de la tabla `utl_tablas`
--
ALTER TABLE `utl_tablas`
  ADD PRIMARY KEY (`tabl_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `frm_formularios`
--
ALTER TABLE `frm_formularios`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `frm_instancias_formularios`
--
ALTER TABLE `frm_instancias_formularios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `frm_items`
--
ALTER TABLE `frm_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `utl_tablas`
--
ALTER TABLE `utl_tablas`
  MODIFY `tabl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;