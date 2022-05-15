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

class ChooseSoraEvent extends SettingsPageEvent{
  final String sora;

  ChooseSoraEvent({required this.sora});

  @override
  List<Object?> get props =>[sora];
}

class ChooseTafsirEvent extends SettingsPageEvent{
  final String tafsir;

  ChooseTafsirEvent({required this.tafsir});

  @override
  List<Object?> get props =>[tafsir];
}

class ChooseTarajimEvent extends SettingsPageEvent{
  final String language;
  final String tarajim;

  ChooseTarajimEvent({required this.language, required this.tarajim});

  @override
  List<Object?> get props =>[language,tarajim];
}

class ChooseTimeStopEvent extends SettingsPageEvent{
  final String soraStopTime;

  ChooseTimeStopEvent({required this.soraStopTime});

  @override
  List<Object?> get props =>[soraStopTime];
}

class MySorasEvent extends SettingsPageEvent{
  final List<String> mySoras;

  MySorasEvent({required this.mySoras});

  @override
  List<Object?> get props =>[mySoras];
}
