import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/InsCuentadante/loan_Notification/List_notification.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';
import 'package:flutter_one/components/rounded_button.dart';
import 'package:flutter_one/components/rounded_button3.dart';


class ModeDetailsNotification extends StatelessWidget {
  final Notific notific;

  ModeDetailsNotification(this.notific);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          notific.title,
          style: TextStyle(
            color: Colors.white,
            //fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xff00c853),
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
              SizedBox(height: size.height * 0.05),
               Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.03),

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
                          notific.nombres,
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
                          'Apellidos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          notific.apellidos,
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
                          'Num Identificacion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          notific.numIdentificacion,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17.0, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.03),


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
                          notific.title,
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
                          notific.condition,
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
                          notific.mark,
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
                          notific.price.toString(),
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
                          notific.fechaingreso,
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
                          notific.location,
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
                          notific.fechaIni,
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
                          notific.fechaFin,
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
                          notific.color,
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
                          notific.serial,
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
                          notific.weight,
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
                  notific.descripcion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 19.0, fontStyle: FontStyle.italic),
                ),
              ),

              SizedBox(height: size.height * 0.02),
              Text('______________________________________________________'),
              
              // datos de la persona 
              SizedBox(height: size.height * 0.02),
              Column(
                children: [
                  RoundedButton(
                    text: "ACEPTAR",
                    press: () {
                     // Navigator.push(
                     //   context,
                     //   MaterialPageRoute(
                     //     builder: (context) {
                     //       return;
                     //     },
                     //   ),
                     // );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  RoundedButton3(
                    text: "RECHAZAR",
                    press: () {
                      //  Navigator.push(
                      //    context,
                      //    MaterialPageRoute(builder: (context) {
                      //      return ;
                      //    }),
                      //  );
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
