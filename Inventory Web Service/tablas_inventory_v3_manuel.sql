CREATE TABLE `aa_etiquetas` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`Etiqueta` VARCHAR(40) NOT NULL COLLATE 'utf8_unicode_ci',
	`Operacion` VARCHAR(40) NOT NULL COLLATE 'utf8_unicode_ci',
	`Zpl` TEXT NOT NULL COLLATE 'utf8_unicode_ci',
	`Estatus` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Predeterminada` TINYINT(4) NOT NULL DEFAULT '0',
	`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX `Idx_etiquetas_id` (`Id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;

CREATE TABLE `aa_impresoras` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`StoreID` INT(11) NOT NULL DEFAULT '0',
	`Impresora` VARCHAR(50) NOT NULL COLLATE 'utf8_unicode_ci',
	`Operacion` VARCHAR(40) NOT NULL COLLATE 'utf8_unicode_ci',
	`Estatus` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Predeterminada` TINYINT(4) NOT NULL DEFAULT '0',
	`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	INDEX `Idx_impresoras_id` (`Id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;


CREATE TABLE `aa_inventarios` (
	`Id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Tipo` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Modelo` VARCHAR(10) NOT NULL DEFAULT 'ESTANDAR' COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Control` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Documento` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Clave` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatus` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Conteos` TINYINT(4) NOT NULL DEFAULT '1',
	`Conteoactual` TINYINT(4) NOT NULL DEFAULT '1',
	`Cantidad_manual` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Actualizar_teorico` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Bloquear_ubicacion` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Perfil_autorizacion` VARCHAR(20) NOT NULL DEFAULT 'SUPERVISOR' COLLATE 'utf8_unicode_ci',
	`Fecha_registro` DATETIME NULL DEFAULT NULL,
	`Fecha_conteo1` DATETIME NULL DEFAULT NULL,
	`Fecha_conteo2` DATETIME NULL DEFAULT NULL,
	`Fecha_conteo3` DATETIME NULL DEFAULT NULL,
	`Fecha_cierre` DATETIME NULL DEFAULT NULL,
	`Usuario_registro` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_conteo1` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_conteo2` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_conteo3` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_cierre` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Equipo` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Ajustado` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	INDEX `Idx_inv` (`Id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=44
;

CREATE TABLE `aa_inventariosalm` (
	`Idalm` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Id` BIGINT(20) NOT NULL,
	`Idalmacen` INT(11) NOT NULL,
	`Almacen` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	INDEX `Idx_invalm` (`Idalm`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=44
;

CREATE TABLE `aa_inventariosbk` (
	`Idbk` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Id` BIGINT(20) NOT NULL,
	`Fecha` DATETIME NULL DEFAULT NULL,
	`Codigo` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Almacenid` INT(11) NOT NULL,
	`Almacen` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Ubicacion` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Operacion` VARCHAR(1) NOT NULL COLLATE 'utf8_unicode_ci',
	`Cantidad` DOUBLE NOT NULL DEFAULT '0',
	`Factor` DOUBLE NOT NULL DEFAULT '0',
	`Conteo` TINYINT(4) NOT NULL DEFAULT '0',
	`Modo` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Usuario` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Serial` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	INDEX `Idx_invbk_id` (`Idbk`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1127
;

CREATE TABLE `aa_inventariosd` (
	`Id` BIGINT(20) NOT NULL,
	`Linea` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Itemidinv` BIGINT(20) NOT NULL DEFAULT '0',
	`Itemid` INT(11) NOT NULL,
	`Itemcombinationid` INT(11) NOT NULL,
	`Codigo` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Referencia` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Barra` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Talla` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Tipo` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Foto` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Almacenid` INT(11) NOT NULL,
	`Almacen` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Teorico` DOUBLE NOT NULL DEFAULT '0',
	`Teorico1` DOUBLE NOT NULL DEFAULT '0',
	`Teorico2` DOUBLE NOT NULL DEFAULT '0',
	`Teorico3` DOUBLE NOT NULL DEFAULT '0',
	`Conteo1` DOUBLE NOT NULL DEFAULT '0',
	`Conteo2` DOUBLE NOT NULL DEFAULT '0',
	`Conteo3` DOUBLE NOT NULL DEFAULT '0',
	`Entradas1` DOUBLE NOT NULL DEFAULT '0',
	`Entradas2` DOUBLE NOT NULL DEFAULT '0',
	`Entradas3` DOUBLE NOT NULL DEFAULT '0',
	`Salidas1` DOUBLE NOT NULL DEFAULT '0',
	`Salidas2` DOUBLE NOT NULL DEFAULT '0',
	`Salidas3` DOUBLE NOT NULL DEFAULT '0',
	`Costo` DOUBLE NOT NULL DEFAULT '0',
	`Precio` DOUBLE NOT NULL DEFAULT '0',
	`Ajuste` DOUBLE NOT NULL DEFAULT '0',
	`Comentario` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Conteo_cierre` TINYINT(4) NOT NULL DEFAULT '0',
	`Estatus` VARCHAR(10) NOT NULL DEFAULT 'OPEN' COLLATE 'utf8_unicode_ci',
`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_lectura` DATETIME NULL DEFAULT NULL,
	`Ultimo_usuario_lectura` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Modo` VARCHAR(10) NOT NULL DEFAULT '\'Escaner\'' COLLATE 'utf8_unicode_ci',
	`Serializado` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`UUID` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Idunidad` INT(11) NOT NULL DEFAULT '0',
	`Cantidad_conteo1` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_conteo2` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_conteo3` DOUBLE NOT NULL DEFAULT '0',
	INDEX `Idx_invd` (`Linea`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=254
;

CREATE TABLE `aa_inventariosdseriales` (
	`Id` BIGINT(20) NOT NULL,
	`Linea` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Itemidinv` BIGINT(20) NOT NULL DEFAULT '0',
	`Itemid` INT(11) NOT NULL,
	`Itemcombinationid` INT(11) NOT NULL,
	`Codigo` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Referencia` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Barra` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Serial` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(200) NOT NULL COLLATE 'utf8_unicode_ci',
	`Talla` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Almacenid` INT(11) NOT NULL,
	`Almacen` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Ubicacion` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Teorico` DOUBLE NOT NULL DEFAULT '0',
	`Conteo1` DOUBLE NOT NULL DEFAULT '0',
	`Conteo2` DOUBLE NOT NULL DEFAULT '0',
	`Conteo3` DOUBLE NOT NULL DEFAULT '0',
	`Comentario` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Conteo_cierre` TINYINT(4) NOT NULL DEFAULT '0',
	`Estatus1` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatus2` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatus3` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_lectura` DATETIME NULL DEFAULT NULL,
	`Fecha_corregido` DATETIME NULL DEFAULT NULL,
	`Ultimo_usuario_lectura` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_corrige` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Modo` VARCHAR(10) NOT NULL DEFAULT '\'Escaner\'' COLLATE 'utf8_unicode_ci',
	`UUID` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Gruposerial` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Idunidad` INT(11) NOT NULL DEFAULT '0',
	INDEX `Idx_invd` (`Linea`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=987
;

CREATE TABLE `aa_inventariosdu` (
	`Id` BIGINT(20) NOT NULL,
	`Linea` INT(11) NOT NULL AUTO_INCREMENT,
	`Itemid` INT(11) NOT NULL,
	`Itemcombinationid` INT(11) NOT NULL,
	`Codigo` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Referencia` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Barra` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Almacenid` INT(11) NOT NULL,
	`Almacen` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Ubicacion` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Teorico` DOUBLE NOT NULL DEFAULT '0',
	`Conteo1` DOUBLE NOT NULL DEFAULT '0',
	`Conteo2` DOUBLE NOT NULL DEFAULT '0',
	`Conteo3` DOUBLE NOT NULL DEFAULT '0',
	`User1` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`User2` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`User3` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Costo` DOUBLE NOT NULL DEFAULT '0',
	`Precio` DOUBLE NOT NULL DEFAULT '0',
	`Comentario` VARCHAR(10) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_c1` DATETIME NULL DEFAULT NULL,
	`Fecha_c2` DATETIME NULL DEFAULT NULL,
	`Fecha_c3` DATETIME NULL DEFAULT NULL,
	`Modo` VARCHAR(10) NOT NULL DEFAULT '\'Escaner\'' COLLATE 'utf8_unicode_ci',
	`Serializado` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Idunidad` INT(11) NULL DEFAULT NULL,
	`uuid` VARCHAR(40) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`Cantidad_conteo1` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_conteo2` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_conteo3` DOUBLE NOT NULL DEFAULT '0',
	INDEX `Idx_invdu` (`Linea`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
ROW_FORMAT=DYNAMIC
AUTO_INCREMENT=209
;


CREATE TABLE `aa_inventariosubicaciones` (
	`Id` BIGINT(20) NOT NULL,
	`Almacenid` INT(11) NOT NULL,
	`Ubicacion` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`UUID` VARCHAR(40) NOT NULL COLLATE 'utf8_unicode_ci'
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
;

CREATE TABLE `aa_invoices` (
	`Id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Codigo_mov` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Mov` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Movid` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`No_control` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`No_fisico` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`No_ajuste` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatus` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Situacion` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatusd` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Estatusr` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Observacion` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Comentario` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Notas` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Idorigen` INT(11) NOT NULL DEFAULT '0',
	`Origen` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Iddestino` INT(11) NOT NULL DEFAULT '0',
	`Destino` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Idcliente` INT(11) NOT NULL DEFAULT '0',
	`Documento_cliente` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Cliente` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Telefono` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Correo` VARCHAR(40) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Direccion` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Pais` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Provincia` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Total_paginas` INT(11) NOT NULL DEFAULT '0',
	`Total_ref` INT(11) NOT NULL DEFAULT '0',
	`Total_refd` INT(11) NOT NULL DEFAULT '0',
	`Total_refr` INT(11) NOT NULL DEFAULT '0',
	`Total_und` DOUBLE NOT NULL DEFAULT '0',
	`Total_undd` DOUBLE NOT NULL DEFAULT '0',
	`Total_undr` DOUBLE NOT NULL DEFAULT '0',
	`Subtotala` DOUBLE NOT NULL DEFAULT '0',
	`Descuento` DOUBLE NOT NULL DEFAULT '0',
	`Subtotalb` DOUBLE NOT NULL DEFAULT '0',
	`Impuesto` DOUBLE NOT NULL DEFAULT '0',
	`Total_impuesto` DOUBLE NOT NULL DEFAULT '0',
	`Total_exento` DOUBLE NOT NULL DEFAULT '0',
	`Total` DOUBLE NOT NULL DEFAULT '0',
	`Totalr` DOUBLE NOT NULL DEFAULT '0',
	`Usuario_registro` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_emision` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_despacho1` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_despacho2` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_despacho3` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_despacho_cierre` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_recepcion1` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_recepcion2` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_recepcion3` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuario_recepcion_cierre` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Vendedor` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Cajero` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Equipo` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Caja` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_despacho_inicio` DATETIME NULL DEFAULT NULL,
	`Fecha_despacho_fin` DATETIME NULL DEFAULT NULL,
	`Fecha_recepcion_inicio` DATETIME NULL DEFAULT NULL,
	`Fecha_recepcion_fin` DATETIME NULL DEFAULT NULL,
	`Fecha_emision` DATETIME NULL DEFAULT NULL,
	INDEX `Idx_invoices_id` (`Id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=10
;

CREATE TABLE `aa_invoicesbk` (
	`Idbk` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Id` BIGINT(20) NOT NULL,
	`Fecha` DATETIME NULL DEFAULT NULL,
	`Codigo_mov` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Mov` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Movid` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Codigo` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Serial` VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci',
	`Ubicacion` VARCHAR(30) NOT NULL COLLATE 'utf8_unicode_ci',
	`Operacion` VARCHAR(1) NOT NULL COLLATE 'utf8_unicode_ci',
	`Cantidad` DOUBLE NOT NULL DEFAULT '0',
	`Factor` DOUBLE NOT NULL DEFAULT '0',
	`Precio_fijo` DOUBLE NOT NULL DEFAULT '0',
	`Descuento_fijo` DOUBLE NOT NULL DEFAULT '0',
	`Modo` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Usuario` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	INDEX `Idx_invoicesbk` (`Idbk`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
ROW_FORMAT=DYNAMIC
AUTO_INCREMENT=101
;

CREATE TABLE `aa_invoicesd` (
	`Id` BIGINT(20) NULL DEFAULT NULL,
	`Renglon` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Pagina` INT(11) NOT NULL DEFAULT '0',
	`Linea` INT(11) NOT NULL DEFAULT '0',
	`Iditem` INT(11) NOT NULL DEFAULT '0',
	`Iditemc` INT(11) NOT NULL DEFAULT '0',
	`Codigo` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Referencia` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Barra` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Talla` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Foto` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Factor` DOUBLE NOT NULL DEFAULT '0',
	`Idunidad` INT(11) NOT NULL DEFAULT '0',
	`Unidad` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Cantidad_pedida` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_aprobada` DOUBLE NOT NULL DEFAULT '0',
	`Cantidadd` DOUBLE NOT NULL DEFAULT '0',
	`Cantidadr` DOUBLE NOT NULL DEFAULT '0',
	`Disponible` DOUBLE NOT NULL DEFAULT '0',
	`Idorigen` INT(11) NOT NULL DEFAULT '0',
	`Origen` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Iddestino` INT(11) NOT NULL DEFAULT '0',
	`Destino` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Costo` DOUBLE NOT NULL DEFAULT '0',
	`Precio` DOUBLE NOT NULL DEFAULT '0',
	`Descuento` DOUBLE NOT NULL DEFAULT '0',
	`Subtotal` DOUBLE NOT NULL DEFAULT '0',
	`Exento` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Impuesto` DOUBLE NOT NULL DEFAULT '0',
	`Totalimpuesto` DOUBLE NOT NULL DEFAULT '0',
	`Total` DOUBLE NOT NULL DEFAULT '0',
	`Totalr` DOUBLE NOT NULL DEFAULT '0',
	`Estatus` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Situacion` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Modo` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Observacion` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_despacho` DATETIME NULL DEFAULT NULL,
	`Fecha_recepcion` DATETIME NULL DEFAULT NULL,
	`Usuario_registro` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuariod` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuarior` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Serializado` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	INDEX `Ídx_invoicesd` (`Renglon`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=39
;

CREATE TABLE `aa_invoicesdseriales` (
	`Id` BIGINT(20) NULL DEFAULT NULL,
	`Renglon` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`Pagina` INT(11) NOT NULL DEFAULT '0',
	`Linea` INT(11) NOT NULL DEFAULT '0',
	`Iditem` INT(11) NOT NULL DEFAULT '0',
	`Iditemc` INT(11) NOT NULL DEFAULT '0',
	`Idinv` INT(11) NOT NULL DEFAULT '0',
	`Codigo` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Referencia` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Barra` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Serial` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Descripcion` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Talla` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Foto` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Factor` DOUBLE NOT NULL DEFAULT '0',
	`Idunidad` INT(11) NOT NULL DEFAULT '0',
	`Unidad` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Cantidad_pedida` DOUBLE NOT NULL DEFAULT '0',
	`Cantidad_aprobada` DOUBLE NOT NULL DEFAULT '0',
	`Cantidadd` DOUBLE NOT NULL DEFAULT '0',
	`Cantidadr` DOUBLE NOT NULL DEFAULT '0',
	`Disponible` DOUBLE NOT NULL DEFAULT '0',
	`Idorigen` INT(11) NOT NULL DEFAULT '0',
	`Origen` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Iddestino` INT(11) NOT NULL DEFAULT '0',
	`Destino` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Costo` DOUBLE NOT NULL DEFAULT '0',
	`Precio` DOUBLE NOT NULL DEFAULT '0',
	`Descuento` DOUBLE NOT NULL DEFAULT '0',
	`Subtotal` DOUBLE NOT NULL DEFAULT '0',
	`Exento` VARCHAR(1) NOT NULL DEFAULT 'N' COLLATE 'utf8_unicode_ci',
	`Impuesto` DOUBLE NOT NULL DEFAULT '0',
	`Totalimpuesto` DOUBLE NOT NULL DEFAULT '0',
	`Total` DOUBLE NOT NULL DEFAULT '0',
	`Totalr` DOUBLE NOT NULL DEFAULT '0',
	`Estatus` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Situacion` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Modo` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Observacion` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Fecha_registro` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`Fecha_despacho` DATETIME NULL DEFAULT NULL,
	`Fecha_recepcion` DATETIME NULL DEFAULT NULL,
	`Usuario_registro` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuariod` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Usuarior` VARCHAR(20) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	`Gruposerial` VARCHAR(30) NOT NULL DEFAULT '' COLLATE 'utf8_unicode_ci',
	INDEX `Ídx_invoicesd` (`Renglon`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=128
;

CREATE TABLE `aa_secuencias` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`Centro` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`Operacion` VARCHAR(20) NOT NULL COLLATE 'utf8_unicode_ci',
	`Secuencia` INT(11) NOT NULL DEFAULT '0',
	`Longitud` TINYINT(4) NOT NULL DEFAULT '4',
	`Prefijo` VARCHAR(1) NOT NULL COLLATE 'utf8_unicode_ci',
	INDEX `AA_Id_sec` (`Id`)
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;





