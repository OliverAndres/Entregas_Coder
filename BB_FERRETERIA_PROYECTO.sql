/*Nombre: Oliver Andrés Rodríguez Blanco */
/*Comisión: 34955 */
/*Entrega desafío. */
/*Primera entrega Proyecto Final. */

-- CREACION DE LA BASE DE DATOS FERRETERIA

CREATE DATABASE IF NOT EXISTS proyecto_ferreteria;

USE proyecto_ferreteria;
-- CREACION DE LAS ENTIDADES 

CREATE TABLE IF NOT EXISTS vendedor(
	id_Vendedor INT NOT NULL PRIMARY KEY,
	nom_vend VARCHAR(80) NOT NULL,
	tel_vend int (15) NOT NULL,
	dir_vend VARCHAR(80),
    em_vend VARCHAR(80)
);


CREATE TABLE IF NOT EXISTS proveedores(
	id_proveedor INT NOT NULL PRIMARY KEY,
	nom_prov VARCHAR(80) NOT NULL,
	tel_prov int (15) NOT NULL,
	dir_prov VARCHAR(80),
    em_prov VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS clientes(
	id_cliente INT NOT NULL PRIMARY KEY,
	nom_client VARCHAR(80) NOT NULL,
	tel_client int (15) NOT NULL,
	dir_client VARCHAR(80),
    em_client VARCHAR(80)
);

CREATE TABLE IF NOT EXISTS pedidos(
	id_pedido INT NOT NULL PRIMARY KEY,
	fecha_pedido DATE NOT NULL,
	estado VARCHAR (80) NOT NULL,
	fecha_entrega DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS producto(
	id_producto INT NOT NULL PRIMARY KEY,
	nom_prod VARCHAR(100) NOT NULL,
    id_proveedor INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    val_prod DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
); 

CREATE TABLE IF NOT EXISTS ventas(
	num_Factura INT NOT NULL PRIMARY KEY,
	id_Producto INT NOT NULL,
    id_proveedor INT NOT NULL,
    id_Vendedor INT NOT NULL,
    id_Pedido INT NOT NULL,
    id_Cliente INT NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    fecha_vent DATE NOT NULL,
    FOREIGN KEY (id_Producto) REFERENCES producto(id_producto), 
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
    FOREIGN KEY (id_Vendedor) REFERENCES vendedor(id_Vendedor),
    FOREIGN KEY (id_Pedido) REFERENCES pedidos(id_Pedido),
    FOREIGN KEY (id_Cliente) REFERENCES clientes(id_Cliente)
); 







