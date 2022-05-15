part of 'settings_page_bloc.dart';

abstract class SettingsPageEvent extends Equatable {
  @override
  List<Object?> get props =>[];
}

class ChooseReaderEvent extends SettingsPageEvent{
  final String reader;

  ChooseReaderEvent({required this.reader});

  @override
  List<Object?> get props =>[reader];
}

class ChooseSoraEvent extends SettingsPageEvent{}

class ChooseTafsirEvent extends SettingsPageEvent{}

class ChooseTarajimEvent extends SettingsPageEvent{}

class ChooseTimeStopEvent extends SettingsPageEvent{}

class MySorasEvent extends SettingsPageEvent{}
