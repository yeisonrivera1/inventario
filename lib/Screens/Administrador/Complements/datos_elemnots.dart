import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/Administrador/Complements/list_inventarios.dart';
import 'package:flutter_one/Screens/Administrador/Complements/model_list_Admin.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';
import 'package:flutter_one/components/model_list.dart';


class DatosElementosAdmin extends StatelessWidget {
 final InventarioAdm inventarioAdm;

  DatosElementosAdmin(this.inventarioAdm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          " LIsta Elementos ",
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
        itemCount: listElement.length,
        itemBuilder: (context, index) {
          Elements elements = listElement[index];
          return Card(
            child: ListTile(
              title: Text(elements.title),
              subtitle: Text(elements.mark.toString()),
              isThreeLine: true,
              leading: Icon(Icons.monitor),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ModelDetaillsListMyLoanss(elements)));
              },
            ),
          );
        },
      ),
    );
  }
}
