import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';
import 'package:flutter_one/components/rounded_button3.dart';


class FormReportApren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formulario de Reporte',
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
      body: Center(
        child: SingleChildScrollView(
                  child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.report_problem, size: 150, color: Colors.redAccent
                ,),
                SizedBox(height: size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    left: 10,
                    right: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Fecha',
                      labelText: 'Fecha',
                      labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    // maxLength: 50,
                   // maxLines: 8,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    left: 10,
                    right: 10,
                  ),
                  child: TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Describa las fallas o estado del elemento',
                      labelText: 'Descripcion',
                      labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    
                    // maxLength: 50,
                    maxLines: 8,
                  
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                  Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    left: 10,
                    right: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Prioridad',
                      labelText: 'Describa el nivel de prioridad',
                      labelStyle: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    // maxLength: 50,
                   // maxLines: 8,
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                Column(
                  children: [
                    RoundedButton3(
                      text: "ENVIAR",
                      press: () {
                       //igator.push(
                       //ontext,
                       //aterialPageRoute(builder: (context) {
                       // return;
                         // }
                       //   ),
                     //   );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
