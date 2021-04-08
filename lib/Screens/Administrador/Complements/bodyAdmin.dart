import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Administrador/Ambientes/list_ambientes_Screen.dart';
import 'package:flutter_one/Screens/Administrador/Report/list_report.dart';
import 'package:flutter_one/components/rounded_button4.dart';



class BodyAdmin extends StatelessWidget {
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
                SizedBox(height: size.height * 0.05),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Ada Lorena Ceron',
                        style: TextStyle(
                          fontSize: 30,
                        ))
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Column(
                  children: [
                    RoundedButton4(
                      text: "iNVENTARIOS",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ListAmbienteScreen();
                          }),
                        );
                      },
                    ),
                    RoundedButton4(
                      text: "REPORTE",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ListElemntAdm();
                          }),
                        );
                      },
                    ),
                // RoundedButton4(
                //   text: "MIS PRESTAMOS",
                //   press: () {
                //     Navigator.push(context, 
                //     MaterialPageRoute(builder: (context){
                //       return MyLoandsScreen();
                //     },),);
                //   },
                // ),
                    SizedBox(height: size.height * 0.1),
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
