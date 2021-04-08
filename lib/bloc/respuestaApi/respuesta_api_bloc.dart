import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_one/model/city.dart';
import 'package:flutter_one/provider/Api.dart';

part 'respuesta_api_event.dart';
part 'respuesta_api_state.dart';

class RespuestaApiBloc extends Bloc<RespuestaApiEvent, RespuestaApiState> {
  RespuestaApiBloc() : super(RespuestaApiInitial());

  @override
  Stream<RespuestaApiState> mapEventToState(
    RespuestaApiEvent event,
  ) async* {
    if(event is ResApiGetCityByNameEvent) {
      yield ResApiLoadingState();
      final List<City> city = await Api().getCityByName(event.city);
      if(city!=null){
        yield ResApiSuccessGetCityByNameState(city: city);
      }else{
        yield ResApiFailureGetCityByNameState('Verifique el nombre de la ciudad');
      }
    }else{
      yield RespuestaApiInitial();
    }
  }
}
