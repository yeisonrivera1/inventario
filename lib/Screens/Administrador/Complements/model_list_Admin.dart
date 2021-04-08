import 'package:flutter/material.dart';

class InventarioAdm {
  
  String titleAmb;
  String capacidad;
  String ubicacion;
  

  InventarioAdm(
      {
      @required this.titleAmb,
      @required this.capacidad,
      @required this.ubicacion,});
}

List<InventarioAdm> listInventarioAdm = [
  InventarioAdm(
    
    titleAmb: 'Ambiente de desarrollo ',
    capacidad: '30',
    ubicacion: 'Primer piso',
    
  ),

   InventarioAdm(
    
    titleAmb: 'Ambiente de Cocina ',
    capacidad: '20',
    ubicacion: 'Primer piso',
    
  ),

   InventarioAdm(
    
    titleAmb: 'Ambiente de desarrollo ',
    capacidad: '40',
    ubicacion: 'tercer piso',
    
  ),

   InventarioAdm(
    
    titleAmb: 'Enfermeria ',
    capacidad: '25',
    ubicacion: 'Segundo piso',
    
  ),

   InventarioAdm(
    
    titleAmb: 'Ambiente de desarrollo ',
    capacidad: '30',
    ubicacion: 'Primer piso',
    
  ),

   
  
  
    
];
