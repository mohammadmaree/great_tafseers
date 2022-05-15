import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/change_page_view_index.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final ChangePageViewIndex changePageViewIndex;
  HomePageBloc({required this.changePageViewIndex}) : super(HomePageInitial());


  @override
  Stream<HomePageState> mapEventToState(
      HomePageEvent event,
      ) async* {
    if (event is ChangePageViewIndexEvent) {
      yield ChangePageViewIndexStateLoading();
      final failureOrPageView = await changePageViewIndex(
          ChangePageViewIndexParams(result: event.index));
      yield failureOrPageView.fold(
              (failure) => ChangePageViewIndexStateError('failure'),
              (home) => ChangePageViewIndexStateLoaded(home));
    }

  }

  }


