import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/play_page/domain/usecases/choose_play.dart';

part 'play_page_event.dart';
part 'play_page_state.dart';

class PlayPageBloc extends Bloc<PlayPageEvent, PlayPageState> {
  final ChoosePlay  choosePlay;

  PlayPageBloc(this.choosePlay) : super(PlayPageInitial());

  @override
  Stream<PlayPageState> mapEventToState(PlayPageEvent event,) async*{
    if(event is submit)
      {
        yield ChooseReaderStateLoading();
        final result =await choosePlay(Params(result: event.result));
        yield* result.fold((error) async*{
          yield ChooseReaderStateError(message: error.toString());
        }, (r)async*{
          if(event.result==r.nameOfSora)yield ChooseReaderStateLoaded(result: r.nameOfSora);
          if(event.result==r.numberOfPage)yield ChooseReaderStateLoaded(result: r.numberOfPage);
          if(event.result==r.numberOfHizb)yield ChooseReaderStateLoaded(result: r.numberOfHizb);
          if(event.result==r.numberOfJoza)yield ChooseReaderStateLoaded(result: r.numberOfJoza);
        });
      }
  }
}
