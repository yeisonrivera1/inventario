import 'package:flutter/material.dart';

class Notific {
  String nombres;
  String apellidos;
  String numIdentificacion;
  String title;
  String mark;
  String condition;
  String color;
  String serial;
  String weight;
  String descripcion;
  String location;
  String fechaIni;
  String fechaFin;
  String fechaingreso;
  int price;

  Notific(
      {@required this.nombres,
      @required this.apellidos,
      @required this.numIdentificacion,
      @required this.descripcion,
      @required this.title,
      @required this.mark,
      @required this.condition,
      @required this.color,
      @required this.serial,
      @required this.weight,
      @required this.location,
      @required this.fechaIni,
      @required this.fechaFin,
      @required this.fechaingreso,
      @required this.price});
}

List<Notific> listNotific = [
  Notific(
    nombres: 'Adrian Stiven',
    apellidos: 'Diaz',
    numIdentificacion: '1025965821',
    title: 'MSI GE75 Raiders',
    mark: 'Samsung',
    condition: 'Electronico',
    color: 'Negro',
    serial: 'f5ds1s61dgsd1',
    weight: '2Kg',
    descripcion:
        'Procesador Intel Core i7-10875H (8 núcleos, 16 MB Cache, 2.3 GHz hasta 5.1 GHz) Memoria RAM de 32GB RAM, 16 GB x 2 (2666 MHz) Almacenamiento 1TB NVMe PCIe Gen3x4 SSD Tarjeta grafica GeForce RTX 2070, GDDR6 8 GB Sistema operativo Windows 10 Home Display 17.3" FullHD (1920*1080) 16:9 240Hz Thin Bezel',
    location: 'Auditorio',
    fechaIni: '12/02/2020',
    fechaFin: '14/02/2020',
    fechaingreso: '10/05/2019',
    price: 1000000,
  ),

   Notific(
    nombres: 'Yeison Camilo',
    apellidos: 'Rivera Tumiña',
    numIdentificacion: '1025965821',
    title: 'Portatil Asus De Competencia',
    mark: 'Samsung',
    condition: 'Electronico',
    color: 'Negro',
    serial: 'f5ds1s61dgsd1',
    weight: '2Kg',
    descripcion:
        'Procesador Intel Core i7-10875H (8 núcleos, 16 MB Cache, 2.3 GHz hasta 5.1 GHz) Memoria RAM de 32GB RAM, 16 GB x 2 (2666 MHz) Almacenamiento 1TB NVMe PCIe Gen3x4 SSD Tarjeta grafica GeForce RTX 2070, GDDR6 8 GB Sistema operativo Windows 10 Home Display 17.3" FullHD (1920*1080) 16:9 240Hz Thin Bezel',
    location: 'Auditorio',
    fechaIni: '12/02/2020',
    fechaFin: '14/02/2020',
    fechaingreso: '10/05/2019',
    price: 15000000,
  ),

   Notific(
    nombres: 'Jackson Andres',
    apellidos: 'Puerres',
    numIdentificacion: '1025965821',
    title: 'Portatil Asus',
    mark: 'Samsung',
    condition: 'Electronico',
    color: 'Negro',
    serial: 'f5ds1s61dgsd1',
    weight: '2Kg',
    descripcion:
        'Procesador Intel Core i7-10875H (8 núcleos, 16 MB Cache, 2.3 GHz hasta 5.1 GHz) Memoria RAM de 32GB RAM, 16 GB x 2 (2666 MHz) Almacenamiento 1TB NVMe PCIe Gen3x4 SSD Tarjeta grafica GeForce RTX 2070, GDDR6 8 GB Sistema operativo Windows 10 Home Display 17.3" FullHD (1920*1080) 16:9 240Hz Thin Bezel',
    location: 'Auditorio',
    fechaIni: '12/02/2020',
    fechaFin: '14/02/2020',
    fechaingreso: '10/05/2019',
    price: 16000000,
  )
];
