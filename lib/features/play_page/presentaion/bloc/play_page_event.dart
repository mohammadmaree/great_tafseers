part of 'play_page_bloc.dart';

abstract class PlayPageEvent extends Equatable {
  @override
  List<Object?> get props =>[];
}
class SubmitEvent extends PlayPageEvent {
  final String selected;
  final bool nextPage;
  final bool repetition;
  SubmitEvent({required this.selected,required this.nextPage, required this.repetition});
  @override
  List<Object?> get props =>[selected,nextPage,repetition];
}