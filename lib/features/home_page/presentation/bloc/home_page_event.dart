part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {}

class GetDataHomePageEvent extends HomePageEvent {
  final int index;
  GetDataHomePageEvent({required this.index});

  @override
  List<Object?> get props =>[index];
}
