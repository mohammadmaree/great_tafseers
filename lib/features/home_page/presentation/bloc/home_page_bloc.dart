import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/swipe_page_view.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final SwipePageView swipePageView;
  HomePageBloc({required this.swipePageView});

  @override
  HomePageState get initialState => HomePageInitial();

  @override
  Stream<HomePageState> mapEventToState(
      HomePageEvent event,
      ) async* {
    if (event is GetDataHomePageEvent) {
      //yield ViewPageStateLoading();
      final failureOrPageView = await swipePageView(
          Params(result: event.index));
      yield failureOrPageView.fold(
              (failure) =>
              ViewPageStateError('failure'),
              (home) => ViewPageStateLoaded(home));
    }

  }

  }


