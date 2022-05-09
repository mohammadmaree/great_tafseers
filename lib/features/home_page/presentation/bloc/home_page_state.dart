part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {}

class ViewPageStateLoading extends HomePageState {}
class ViewPageStateLoaded extends HomePageState {
  final HomePage homePage;

  ViewPageStateLoaded(this.homePage);
}
class ViewPageStateError extends HomePageState {
  final String message;

  ViewPageStateError(this.message);
}
