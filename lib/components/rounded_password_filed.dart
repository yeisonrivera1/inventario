import 'package:flutter/material.dart';
import 'package:flutter_one/components/text_field_container.dart';
import 'package:flutter_one/constants.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: kPromaryColor,
          ),
          suffixIcon: Icon(Icons.visibility,
          color: kPromaryColor,
          ),
          border: InputBorder.none
         ),
       ),
    );
  }
}