import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_one/bloc/respuestaApi/respuesta_api_bloc.dart';
import 'package:flutter_one/constants.dart';
import 'package:flutter_one/model/city.dart';

class RespuestaApiUi extends StatefulWidget {
  @override
  _RespuestaApiUiState createState() => _RespuestaApiUiState();
}

class _RespuestaApiUiState extends State<RespuestaApiUi> {

  RespuestaApiBloc apiBloc;
  City city = City();
  List<City> listCity = List();

  TextEditingController textController;
  @override
  void initState() {
    textController = TextEditingController();
    apiBloc = BlocProvider.of<RespuestaApiBloc>(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
              title: Text(
                " RESPUESTA Api TIME ",
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
      body: BlocListener<RespuestaApiBloc, RespuestaApiState>(
        listener: (context, state){
          if(state is ResApiSuccessGetCityByNameState){
            print(state.props.first);
            listCity = state.props.first;
          }
          if(state is ResApiFailureGetCityByNameState){
            print(state.props.first);
          }
        },
        child: BlocBuilder<RespuestaApiBloc, RespuestaApiState>(
          builder: (context, state){
            return Center(
              child: Column(
                children: [
                  TextField(
                    controller: textController,
                  ),
                  FlatButton(
                    onPressed: (){
                      print(textController.text);
                      apiBloc.add(ResApiGetCityByNameEvent(city: textController.text));
                    },
                    child: BlocBuilder<RespuestaApiBloc, RespuestaApiState>(
                      builder: (context, state){
                        if(state is ResApiLoadingState)
                          return CircularProgressIndicator();
                        else if(state is ResApiSuccessGetCityByNameState) {
                          listCity = state.props.first;
                          city = listCity.first;
                          return Center(
                            child: city.title != null ? Text(city.title) : Text(
                                'city'),
                          );
                        }
                        else
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                                color: kAprendizbtn,
                                  width: size.width*0.8,
                                  
                                  child: Center(child: Text('SOLICITAR', style: TextStyle(color: Colors.white),))),
                              // city.title == null ?
                              // Text(city.title) : null,
                            ],
                          );
                      },
                    )
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
