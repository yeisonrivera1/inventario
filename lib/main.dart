import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_one/Screens/Welcome/Welcome_screen.dart';
import 'package:flutter_one/bloc/respuestaApi/respuesta_api_bloc.dart';
import 'package:flutter_one/ui/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return ;
        }),
        BlocProvider(create: (context){
          return RespuestaApiBloc();
        }),
      ],
      child: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: WelcomeScreen(),
        ),
      ),
    );
  }
}