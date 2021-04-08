import 'package:flutter/material.dart';
import 'package:flutter_one/constants.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Olvido su contraseña ? ": "Ya se encuentra registrado ? ",
          style: TextStyle(color: kPromaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
           login ? "Registrarse": "Registrarse",
            style: TextStyle(
              color: kPromaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
     ],
    );
  }
}



