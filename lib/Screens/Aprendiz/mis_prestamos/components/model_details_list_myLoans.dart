import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Aprendiz/mis_prestamos/components/form_list_report.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';
import 'package:flutter_one/components/model_list.dart';
import 'package:flutter_one/components/rounded_button3.dart';


class ModelDetaillsListMyLoans extends StatelessWidget {
  final Elements elements;

  ModelDetaillsListMyLoans(this.elements);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          elements.title,
          style: TextStyle(
            color: Colors.white,
            //fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xff01579b),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.exit_to_app,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xfff5f5f5),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.monitor, size: 200),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nombre',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Tipo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.condition,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Marca',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.mark,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Marca',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.price.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fecha Ingreso',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.fechaingreso,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Ubicacion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.location,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fecha inicio',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.fechaIni,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fecha de entrega',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.fechaFin,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Color',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.color,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Serial',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.serial,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Peso',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          elements.weight,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Descripcion',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  elements.descripcion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic),
                ),
              ),
             Column(
               children: [
                 RoundedButton3(
                   text: "REPORTAR",
                   press: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) {
                         return FormReportApren();
                       }),
                     );
                   },
                 ),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
