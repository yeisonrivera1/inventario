import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Aprendiz/loan_application_screen.dart';
import 'package:flutter_one/Screens/Aprendiz/my_loans_Screen.dart';
import 'package:flutter_one/Screens/Aprendiz/solicitar_prestamo/list_elements_Apre.dart';
import 'package:flutter_one/components/rounded_button2.dart';
import 'package:flutter_one/ui/splash/splash_screen.dart';


class Body extends StatelessWidget {
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
            ),
            body: SingleChildScrollView(
                          child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/images/senaL.png",
                            width: 330, height: 270),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Adrian Diaz',
                          style: TextStyle(
                            fontSize: 30,
                          ))
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Column(
                    children: [
                      RoundedButton2(
                        text: "SOLICITAR PRESTAMO",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ListElementsApren();
                            }),
                          );
                        },
                      ),
                   
                      RoundedButton2(
                        text: "MIS PRESTAMOS",
                        press: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context){
                            return MyLoandsScreen();
                          },),);
                        },
                      ),

                      RoundedButton2(
                        text: "Api Time",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SplashScreen();
                            }),
                          );
                        },
                      ),

                      RoundedButton2(
                        text: "Api Text",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return LoanApplication();
                            }),
                          );
                        },
                      ),

                      
                      SizedBox(height: size.height * 0.09),
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
          ),
        ],
      ),
    );
  }
}
