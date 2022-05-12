part of 'settings_page_bloc.dart';

abstract class SettingsPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class SettingsPageInitial extends SettingsPageState {}


class ChooseReaderStateLoading extends SettingsPageState {}
class ChooseReaderStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseReaderStateLoaded(this.settingsPage);
}
class ChooseReaderStateError extends SettingsPageState {
  final String message;
  ChooseReaderStateError(this.message);
}

class ChooseSoraStateLoading extends SettingsPageState {}
class ChooseSoraStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseSoraStateLoaded(this.settingsPage);
}
class ChooseSoraStateError extends SettingsPageState {
  final String message;
  ChooseSoraStateError(this.message);
}

class ChooseTafsirStateLoading extends SettingsPageState {}
class ChooseTafsirStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTafsirStateLoaded(this.settingsPage);
}
class ChooseTafsirStateError extends SettingsPageState {
  final String message;
  ChooseTafsirStateError(this.message);
}

class ChooseTarajimStateLoading extends SettingsPageState {}
class ChooseTarajimStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTarajimStateLoaded(this.settingsPage);
}
class ChooseTarajimStateError extends SettingsPageState {
  final String message;
  ChooseTarajimStateError(this.message);
}

class ChooseTimeStopStateLoading extends SettingsPageState {}
class ChooseTimeStopStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  ChooseTimeStopStateLoaded(this.settingsPage);
}
class ChooseTimeStopStateError extends SettingsPageState {
  final String message;
  ChooseTimeStopStateError(this.message);
}

class MySorasStateLoading extends SettingsPageState {}
class MySorasStateLoaded extends SettingsPageState {
  final SettingsPage settingsPage;
  MySorasStateLoaded(this.settingsPage);
}
class MySorasStateError extends SettingsPageState {
  final String message;
  MySorasStateError(this.message);
}