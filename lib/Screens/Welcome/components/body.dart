import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';
import 'package:flutter_one/Screens/Welcome/components/background.dart';
import 'package:flutter_one/components/rounded_button.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // altura y ancho total de la pantalla
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BIENVENIDOS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.04),
            Image.asset('./assets/images/senaL.png', 
              height: size.height * 0.45,
            ),
             SizedBox(height: size.height * 0.04),
            RoundedButton(
              text: "INGRESAR",
              press: () {
                Navigator.push(
                  context, 
                   MaterialPageRoute(
                    builder: (context) {
                     return LoginScreen();
                    },
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}


