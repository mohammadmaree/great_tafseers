import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_reader.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_sora.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tafsir.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tarajim.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_time_stop.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/my_soras.dart';

part 'settings_page_event.dart';
part 'settings_page_state.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  final ChooseReader chooseReader;
  final ChooseSora chooseSora;
  final ChooseTafsir chooseTafsir;
  final ChooseTarajim chooseTarajim;
  final ChooseTimeStop chooseTimeStop;
  final MySoras mySoras;
  SettingsPageBloc({
    required this.chooseReader,
    required this.chooseSora,
    required this.chooseTafsir,
    required this.chooseTarajim,
    required this.chooseTimeStop,
    required this.mySoras,
  }) : super(SettingsPageInitial());

  @override
  Stream<SettingsPageState> mapEventToState(SettingsPageEvent event,) async* {
    if(event is ChooseReaderEvent)
    {
      yield ChooseReaderStateLoading();
      final result =await chooseReader(ChooseReaderParams(reader:event.reader));
      yield* result.fold((error) async*{
        yield ChooseReaderStateError(message: error.toString());
      }, (result)async*{
        yield ChooseReaderStateLoaded(settingsPage:result);
      });
    }

    if(event is ChooseSoraEvent)
    {
      yield ChooseSoraStateLoading();
      final result =await chooseSora(ChooseSoraParams(sora:event.sora));
      yield* result.fold((error) async*{
        yield ChooseSoraStateError(message: error.toString());
      }, (result)async*{
        yield ChooseSoraStateLoaded(settingsPage:result);
      });
    }

    if(event is ChooseTafsirEvent)
    {
      yield ChooseTafsirStateLoading();
      final result =await chooseTafsir(ChooseTafsirParams(tafsir:event.tafsir));
      yield* result.fold((error) async*{
        yield ChooseTafsirStateError(message: error.toString());
      }, (result)async*{
        yield ChooseTafsirStateLoaded(settingsPage:result);
      });
    }

    if(event is ChooseTarajimEvent)
    {
      yield ChooseTarajimStateLoading();
      final result =await chooseTarajim(ChooseTarajimParams(language:event.language,tarajim:event.tarajim));
      yield* result.fold((error) async*{
        yield ChooseTarajimStateError(message: error.toString());
      }, (result)async*{
        yield ChooseTarajimStateLoaded(settingsPage:result);
      });
    }

    if(event is ChooseTimeStopEvent)
    {
      yield ChooseTimeStopStateLoading();
      final result =await chooseTimeStop(ChooseTimeStopParams(soraStopTime: event.soraStopTime));
      yield* result.fold((error) async*{
        yield ChooseTimeStopStateError(message: error.toString());
      }, (result)async*{
        yield ChooseTimeStopStateLoaded(settingsPage:result);
      });
    }

    if(event is MySorasEvent)
    {
      yield MySorasStateLoading();
      final result =await mySoras(MySorasParams(mySoras:event.mySoras));
      yield* result.fold((error) async*{
        yield MySorasStateError(message: error.toString());
      }, (result)async*{
        yield MySorasStateLoaded(settingsPage:result);
      });
    }


  }
}
