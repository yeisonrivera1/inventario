import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/InsCuentadante/Report/list_report_cuentadante.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';


class ModelDetaillsListAdmin extends StatelessWidget {
  final DatosC datosC;

  ModelDetaillsListAdmin(this.datosC);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'REPORTES',
          style: TextStyle(
            color: Colors.white,
            //fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xffe65100),
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
              Icon(Icons.report_sharp, size: 200),
              
               SizedBox(height: size.height * 0.02),
              Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.02),
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
                          datosC.nombres,
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
                          'Apellido',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          datosC.apellidos,
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
                          'Identificacion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          datosC.numIdentificacion,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

               SizedBox(height: size.height * 0.02),
              Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.02),
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Elemento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          datosC.title,
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
                          datosC.serial,
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
                          'Fecha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          datosC.fecha,
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
                          'Prioridad',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          datosC.prioridad,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
               SizedBox(height: size.height * 0.02),
              Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.02),
              
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
                  datosC.descripcion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic),
                ),
              ),
              //Column(
              //  children: [
              //    RoundedButton3(
              //      text: "REPORTAR",
              //      press: () {
              //        Navigator.push(
              //          context,
              //          MaterialPageRoute(builder: (context) {
              //            return BodyFormReport();
              //          }),
              //        );
              //      },
              //    ),
              //  ],
              //)
            ],
          ),
        ),
      ),
    );
  }
}
