import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Administrador/Complements/bodyAdmin.dart';
import 'package:flutter_one/Screens/Aprendiz/main_menu_screen.dart';
import 'package:flutter_one/Screens/InsCuentadante/main.dart';
import 'package:flutter_one/Screens/Login/components/background.dart';
import 'package:flutter_one/components/already_have_an_acoount_check.dart';
import 'package:flutter_one/components/rounded_button.dart';
import 'package:flutter_one/components/rounded_button2.dart';
import 'package:flutter_one/components/rounded_button3.dart';
import 'package:flutter_one/components/rounded_button4.dart';
import 'package:flutter_one/components/rounded_imput_field.dart';
import 'package:flutter_one/components/rounded_password_filed.dart';




class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "INICIAR SESION", 
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03 ),
            Image.asset(
              './assets/images/senaL.png',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03 ),
            RoundedInputField(
              hintText: "Usuario",
              onChanged: (value) {},
            ),
            RoundedPasswordField( 
              onChanged: (value) {},
            ),
            RoundedButton2(
              text: "USUARIO",
              press: () {
                Navigator.push(
                  context, 
                   MaterialPageRoute(
                    builder: (context) {
                     return MainMenuAprendiz();
                    },
                  ),
                );
              },
            ),
             RoundedButton(
              text: "CUENTADANTE",
              press: () {
                Navigator.push(
                  context, 
                   MaterialPageRoute(
                    builder: (context) {
                     return BodyMain();
                    },
                  ),
                );
              },
            ),
             RoundedButton4(
              text: "ADMINISTRADOR",
              press: () {
                Navigator.push(
                  context, 
                   MaterialPageRoute(
                    builder: (context) {
                     return BodyAdmin();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03 ),
            AlreadyHaveAnAccountCheck(
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

