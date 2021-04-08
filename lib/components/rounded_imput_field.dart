import 'package:flutter/material.dart';
import 'package:flutter_one/components/text_field_container.dart';
import 'package:flutter_one/constants.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
             color: kPromaryColor,
             ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

