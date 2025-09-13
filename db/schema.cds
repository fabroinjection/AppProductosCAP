namespace AppProductosProCode;
using { cuid, Currency } from '@sap/cds/common';

@assert.unique: { nombre: [nombre] }
entity Productos : cuid {
  nombre: String(100) @mandatory;
  precio: Decimal(10,2);
  Currency: Currency;
  cantidadEnStock: Integer;
  proveedor: Association to Proveedores;
}

@assert.unique: { nombre: [nombre] }
entity Proveedores : cuid {
  nombre: String(100) @mandatory;
  contacto: String(100);
  productos: Association to many Productos on productos.proveedor = $self;
}

entity Compras : cuid {
  fecha: Date;
  cantidad: Integer;
  total: Decimal(10,2);
  Currency: Currency;
  cliente: Association to Clientes;
  producto: Association to Productos;
}

@assert.unique: { nombre: [nombre] }
entity Clientes : cuid {
  nombre: String(100) @mandatory;
  puntosDeFidelidad: Integer;
  compras: Association to many Compras on compras.cliente = $self;
}

