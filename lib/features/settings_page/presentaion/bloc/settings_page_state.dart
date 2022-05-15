part of 'settings_page_bloc.dart';

abstract class SettingsPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class SettingsPageInitial extends SettingsPageState {}


class ChooseReaderStateLoading extends SettingsPageState {}
class ChooseReaderStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseReaderStateLoaded({required this.settingsPage});
}
class ChooseReaderStateError extends SettingsPageState {
  final String message;
  ChooseReaderStateError({required this.message});
}

class ChooseSoraStateLoading extends SettingsPageState {}
class ChooseSoraStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseSoraStateLoaded({required this.settingsPage});
}
class ChooseSoraStateError extends SettingsPageState {
  final String message;
  ChooseSoraStateError({required this.message});
}

class ChooseTafsirStateLoading extends SettingsPageState {}
class ChooseTafsirStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTafsirStateLoaded({required this.settingsPage});
}
class ChooseTafsirStateError extends SettingsPageState {
  final String message;
  ChooseTafsirStateError({required this.message});
}

class ChooseTarajimStateLoading extends SettingsPageState {}
class ChooseTarajimStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTarajimStateLoaded({required this.settingsPage});
}
class ChooseTarajimStateError extends SettingsPageState {
  final String message;
  ChooseTarajimStateError({required this.message});
}

class ChooseTimeStopStateLoading extends SettingsPageState {}
class ChooseTimeStopStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTimeStopStateLoaded({required this.settingsPage});
}
class ChooseTimeStopStateError extends SettingsPageState {
  final String message;
  ChooseTimeStopStateError({required this.message});
}

class MySorasStateLoading extends SettingsPageState {}
class MySorasStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  MySorasStateLoaded({required this.settingsPage});
}
class MySorasStateError extends SettingsPageState {
  final String message;
  MySorasStateError({required this.message});
}