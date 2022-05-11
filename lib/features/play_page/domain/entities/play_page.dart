import 'package:equatable/equatable.dart';

class PlayPage extends Equatable {
  final String nameOfSora;
  final String numberOfJoza;
  final String numberOfHizb;
  final String numberOfPage;
  final String imageOfSora;
  final bool nextPage;
  final bool repetition;

  const PlayPage({
    required this.nameOfSora,
    required this.numberOfJoza,
    required this.numberOfHizb,
    required  this.numberOfPage,
    required this.imageOfSora,
    required this.nextPage,
    required this.repetition,
  });

  @override
  List<Object?> get props => [nameOfSora,numberOfJoza,numberOfHizb,numberOfPage,imageOfSora,nextPage,repetition];

}