import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'play_page_event.dart';
part 'play_page_state.dart';

class PlayPageBloc extends Bloc<PlayPageEvent, PlayPageState> {
  PlayPageBloc() : super(PlayPageInitial()) {
    on<PlayPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
