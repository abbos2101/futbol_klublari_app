import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:futbol_klublari_app/data/db/data_service.dart';
import 'package:futbol_klublari_app/di/locator.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final BuildContext context;

  final DataService _dataService = locator.get<DataService>();

  MainBloc(this.context) : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
