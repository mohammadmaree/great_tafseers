import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'play_page_event.dart';
part 'play_page_state.dart';

class PlayPageBloc extends Bloc<PlayPageEvent, PlayPageState> {

  @override
  PlayPageState get initialState => PlayPageInitial();
  @override
  Stream<PlayPageState> mapEventToState(PlayPageEvent event,) async* {

  }
}
