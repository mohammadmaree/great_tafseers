import 'package:equatable/equatable.dart';

class HomePage extends Equatable {
  final String  nameOfSora;
  final String numberOfJoza ;
  final String numberOfPage ;
  final String imageOfSora ;

  const HomePage({required this.nameOfSora, required this.numberOfJoza,required  this.numberOfPage,required this.imageOfSora});

  @override
  List<Object?> get props => [nameOfSora,numberOfJoza,numberOfPage,imageOfSora];

}