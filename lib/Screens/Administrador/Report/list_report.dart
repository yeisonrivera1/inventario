import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Administrador/Report/list_report_detalles.dart';
import 'package:flutter_one/Screens/InsCuentadante/Report/list_report_cuentadante.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';


class ListElemntAdm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          " LIsta de Reportes ",
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
      body: ListView.builder(
        itemCount: listDatosC.length,
        itemBuilder: (context, index) {
          DatosC datosC = listDatosC[index];
          return Card(
            child: ListTile(
              title: Text(datosC.numIdentificacion),
              subtitle: Text(datosC.nombres),
              isThreeLine: true,
              leading: Icon(
                Icons.report_sharp,
                size: 50,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ModelDetaillsListAdmin(datosC)));
              },
            ),
          );
        },
      ),
    );
  }
}
