part of 'play_page_bloc.dart';

abstract class PlayPageEvent extends Equatable {
  const PlayPageEvent();
}
class submit extends PlayPageEvent {
  final String selected;
  final bool nextPage;
  final bool repetition;
  submit({required this.selected,required this.nextPage, required this.repetition});
  @override
  List<Object?> get props =>[selected,nextPage,repetition];
}