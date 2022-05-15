part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  @override
  List<Object?> get props =>[];
}

class ChangePageViewIndexEvent extends HomePageEvent {
  final int index;
  ChangePageViewIndexEvent({required this.index});

  @override
  List<Object?> get props =>[index];
}
