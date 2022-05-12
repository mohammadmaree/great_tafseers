part of 'play_page_bloc.dart';

abstract class PlayPageEvent extends Equatable {
  const PlayPageEvent();
}
class submit extends PlayPageEvent {
  final String result;
  submit({required this.result});
  @override
  List<Object?> get props =>[result];
}