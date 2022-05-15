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

  PlayPageBloc({required this.choosePlay}) : super(PlayPageInitial());

  @override
  Stream<PlayPageState> mapEventToState(PlayPageEvent event,) async*{
    if(event is SubmitEvent)
      {
        yield ChooseReaderStateLoading();
        final result =await choosePlay(ChoosePlayParams(selected: event.selected,nextPage: event.nextPage,repetition: event.repetition ));
        yield* result.fold((error) async*{
          yield ChooseReaderStateError(message: error.toString());
        }, (result)async*{
          yield ChooseReaderStateLoaded(playPage:result);
          //if(event.selected==r.nameOfSora)yield ChooseReaderStateLoaded(playPage:result);
          // if(event.selected==r.numberOfPage)yield ChooseReaderStateLoaded(playPage:result);
          // if(event.selected==r.numberOfHizb)yield ChooseReaderStateLoaded(playPage:result);
          // if(event.selected==r.numberOfJoza)yield ChooseReaderStateLoaded(playPage:result);
        });
      }
  }
}
