import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';

part 'settings_page_event.dart';
part 'settings_page_state.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  SettingsPageBloc() : super(SettingsPageInitial());

  @override
  Stream<SettingsPageInitial> mapEventToState(SettingsPageEvent event,) async* {

  }
}
