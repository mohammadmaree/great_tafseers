part of 'play_page_bloc.dart';

abstract class PlayPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class PlayPageInitial extends PlayPageState {}


class ChooseReaderStateLoading extends PlayPageState {}
class ChooseReaderStateLoaded extends PlayPageState {
  final String result;

  ChooseReaderStateLoaded({required this.result});
}
class ChooseReaderStateError extends PlayPageState {
  final String message;

  ChooseReaderStateError({required this.message});
}