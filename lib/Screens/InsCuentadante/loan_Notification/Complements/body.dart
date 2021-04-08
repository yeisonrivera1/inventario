import 'package:flutter/material.dart';
import 'package:flutter_one/Screens/InsCuentadante/loan_Notification/List_notification.dart';
import 'package:flutter_one/Screens/InsCuentadante/loan_Notification/model_datails_list_notification.dart';
import 'package:flutter_one/Screens/Login/login_screen.dart';



class BodyNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          " LIsta De Solicitudes ",
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
        itemCount: listNotific.length,
        itemBuilder: (context, index) {
          Notific notific = listNotific[index];
          return Card(
            child: ListTile(
              title: Text(notific.title),
              subtitle: Text(notific.nombres),
              isThreeLine: true,
              leading: Icon(
                Icons.notification_important,
                size: 50,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ModeDetailsNotification(notific)));
              },
            ),
          );
        },
      ),
    );
  }
}
