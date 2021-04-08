import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/InsCuentadante/Elementos/list_elemnts.dart';
import 'package:flutter_one/Screens/InsCuentadante/list_elemnts_Report_screen.dart';
import 'package:flutter_one/Screens/InsCuentadante/loand_notification_Screen.dart';
import 'package:flutter_one/components/rounded_button.dart';



class BodyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                " Gestion De Inventario ",
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
            ),
            body: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset('assets/images/senaL.png',
                          width: 330, height: 270),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Jeison javier Solarte',
                        style: TextStyle(
                          fontSize: 30,
                        ))
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Column(
                  children: [
                    RoundedButton(
                      text: "ELEMENTOS",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ListElementsCuen() ;
                          }),
                        );
                      },
                    ),
                    RoundedButton(
                      text: "REPORTES",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ListsElementSReportcreen();
                          }),
                        );
                      },
                    ),
                    RoundedButton(
                      text: "SOLICITUDES",
                      press: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context){
                          return LoandNotificationScreen();
                        },),);
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 40,
                          ),
                          child: Text(
                            'Todos los  derechos reservados \n\n '
                            'Servicio nacional de aprendizaje SENA 2021 ® ',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
