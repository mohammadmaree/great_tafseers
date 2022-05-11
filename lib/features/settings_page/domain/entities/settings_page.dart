import 'package:equatable/equatable.dart';

class SettingsPage extends Equatable {
  final List<String> readers;
  final List<String> soras;
  final List<String> mySoras;
  final List<String> tafasir;
  final List<String> tarajim;
  final List<String> soraStopTime;

  const SettingsPage({
    required this.readers,
    required this.soras,
    required this.mySoras,
    required  this.tafasir,
    required this.tarajim,
    required this.soraStopTime,
  });

  @override
  List<Object?> get props => [readers,soras,mySoras,tafasir,tarajim,soraStopTime];

}