import 'package:equatable/equatable.dart';

class SettingsPage extends Equatable {
  final String nameOfSora;
  final String numberOfJoza;
  final String numberOfHizb;
  final String numberOfPage;
  final String imageOfSora;

  const SettingsPage({
    required this.nameOfSora,
    required this.numberOfJoza,
    required this.numberOfHizb,
    required  this.numberOfPage,
    required this.imageOfSora,
  });

  @override
  List<Object?> get props => [nameOfSora,numberOfJoza,numberOfHizb,numberOfPage,imageOfSora];

}