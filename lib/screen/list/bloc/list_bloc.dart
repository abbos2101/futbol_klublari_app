import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:futbol_klublari_app/data/db/data_service.dart';
import 'package:futbol_klublari_app/di/locator.dart';

part 'list_event.dart';

part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final BuildContext context;

  final DataService _dataService = locator.get<DataService>();

  ListBloc(this.context) : super(ListInitial());

  @override
  Stream<ListState> mapEventToState(
    ListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
