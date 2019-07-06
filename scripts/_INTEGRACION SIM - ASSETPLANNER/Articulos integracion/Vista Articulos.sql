CREATE
VIEW `articles`AS
SELECT
alm_articulos.arti_id AS artId,
alm_articulos.barcode AS artBarCode,
alm_articulos.descripcion AS artDescription,
alm_articulos.costo AS artCoste,
alm_articulos.es_caja AS artIsByBox,
alm_articulos.cantidad_caja AS artCantbox,
alm_articulos.punto_pedido AS punto_pedido,
IF(alm_articulos.eliminado = 1, "AN", "AC") AS artEstado,
alm_articulos.unidad_id AS unidadmedida,
alm_articulos.empr_id AS id_empresa
FROM
alm_articulos