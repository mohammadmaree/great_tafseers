import 'package:equatable/equatable.dart';

class SettingsPage extends Equatable {
  final String reader;
  final String sora;
  final List<String> mySoras;
  final String tafsir;
  final String language;
  final String tarajim;
  final String soraStopTime;

  const SettingsPage({
    required this.reader,
    required this.sora,
    required this.mySoras,
    required this.tafsir,
    required this.language,
    required this.tarajim,
    required this.soraStopTime,
  });

  @override
  List<Object?> get props => [reader,sora,mySoras,tafsir,language,tarajim,soraStopTime];

}