import 'package:flutter/material.dart';
import 'package:flutter_one/constants.dart';


class RoundedButton3 extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton3({
    Key key, 
    this.text, 
    this.press, 
    this.color= kReportBtn, 
    this.textColor = Colors.white,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width *0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: kReportBtn,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
            ),
        ),
      ),
    );
  }
}
