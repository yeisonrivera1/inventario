import 'package:flutter/material.dart';

class DatosC {
  String nombres;
  String apellidos;
  String numIdentificacion;
  String fecha;
  String serial;
  String title;
  String descripcion;
  String prioridad;

  DatosC (
  {@required this.nombres,
  @required this.apellidos,
  @required this.numIdentificacion,
  @required this.fecha,
  @required this.title,
  @required this.serial,
  @required this.prioridad,
  
  @required this.descripcion,
  });

}

List<DatosC> listDatosC = [
  DatosC(
    nombres: 'Adrian Stiven',
    apellidos: 'Diaz',
    numIdentificacion: '1025965821',
    fecha: '12/02/2020',
    title: 'MSI GE75 Raider',
    serial: 'f5ds1s61dgsd1',
    descripcion: 'Hamas gano combinando una fuerte resistencia contra la ocupacion militar con la creacion de organizaciones sociales de base y de servicio a los pobres, una plataforma y una practica que probablemente haria ganar votos en cualquier lugar. La victoria electoral de Hamas es ominosa pero comprensible, a la luz de los acontecimientos. Es enteramente justo describir a Hamas como fundamentalista, extremista y violentista, y como una seria amenaza a la paz y a un acuerdo politicamente justo. Sin embargo, es útil recordar que en aspectos importantes, Hamas no es tan extremista como otros. Por ejemplo, declara que estaría de acuerdo con una tregua con Israel sobre la base de la frontera reconocida a nivel internacional antes de la guerra arabe-israeli de junio de l967. ..La posición de Washington hacia las elecciones en Palestina ha sido coherente. Las elecciones fueron postergadas hasta la muerte de Yasser Arafat, que fue recibida como una oportunidad para la realización de la "visión" de Bush sobre un eventual Estado palestino democrativo, que es una palido y vago reflejo del consenso internacional sobre una acuerdo de dos entidades estatales en la zona, que Estados Unidos viene bloqueando desde hace 30 años....',
    prioridad: 'Media'
  ),
  DatosC(
    nombres: 'Daniel ',
    apellidos: 'Campo',
    numIdentificacion: '1025965821',
    fecha: '12/02/2020',
    title: 'MSI GE75 Raider',
    serial: 'f5ds1s61dgsd1',
    descripcion: 'Pruebe a teclear el código anterior en una sola línea del bloc de notas y guárdelo en el disco con el nombre todo_junto.htm. Cuando lo ejecute, verá el mismo resultado que en el caso del código varios_saltos.htm. Sin embargo, este sistema presenta una grave deficiencia: ',
    prioridad: 'Media'
  ),
  DatosC(
    nombres: 'Santiago ',
    apellidos: 'Rincon',
    numIdentificacion: '1025965821',
    fecha: '12/02/2020',
    title: 'MSI GE75 Raider',
    serial: 'f5ds1s61dgsd1',
    descripcion: 'El elemento se escuentra con rasguños, ademas de tener la pantalla rota ',
    prioridad: 'Media'
  ),
  DatosC(
    nombres: 'jairo ',
    apellidos: 'España',
    numIdentificacion: '1025965821',
    fecha: '12/02/2020',
    title: 'MSI GE75 Raider',
    serial: 'f5ds1s61dgsd1',
    descripcion: 'El elemento se escuentra con rasguños, ademas de tener la pantalla rota ',
    prioridad: 'Media'
  ),
  DatosC(
    nombres: 'yeison Camilo',
    apellidos: 'Rivera',
    numIdentificacion: '1025965821',
    fecha: '12/02/2020',
    title: 'MSI GE75 Raider',
    serial: 'f5ds1s61dgsd1',
    descripcion: 'El elemento se escuentra con rasguños, ademas de tener la pantalla rota ',
    prioridad: 'Media'
  ),
];