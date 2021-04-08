import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Administrador/Complements/datos_elemnots.dart';
import 'package:flutter_one/Screens/Administrador/Complements/model_list_Admin.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';



class DatosElementosAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          " LIsta De iNVENTATIOS",
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
        itemCount: listInventarioAdm.length,
        itemBuilder: (context, index) {
          InventarioAdm inventarioAdm = listInventarioAdm[index];
          return Card(
            child: ListTile(
              title: Text(inventarioAdm.titleAmb),
              subtitle: Text(inventarioAdm.ubicacion),
              isThreeLine: true,
              leading: Icon(Icons.list_alt,
              size: 50,),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DatosElementosAdmin(inventarioAdm)));
              },
            ),
          );
        },
      ),
    );
  }
}
