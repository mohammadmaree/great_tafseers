part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomePageInitial extends HomePageState {}

class ChangePageViewIndexStateLoading extends HomePageState {}
class ChangePageViewIndexStateLoaded extends HomePageState {
  final HomePage homePage;

  ChangePageViewIndexStateLoaded(this.homePage);

}
class ChangePageViewIndexStateError extends HomePageState {
  final String message;
  ChangePageViewIndexStateError(this.message);

}
