import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

class PlayModel extends PlayPage {
  const PlayModel(
      {required String nameOfSora,
        required String numberOfJoza,
        required String numberOfHizb,
        required String numberOfPage,
        required String imageOfSora})
      : super(
      nameOfSora: nameOfSora,
      numberOfJoza: numberOfJoza,
      numberOfHizb : numberOfHizb,
      numberOfPage: numberOfPage,
      imageOfSora: imageOfSora);

  factory PlayModel.fromJson(Map<String, dynamic> json) {
    return PlayModel(
        nameOfSora: json["nameOfSora"],
        numberOfJoza: json["numberOfJoza"],
        numberOfHizb: json["numberOfHizb"],
        numberOfPage: json["numberOfPage"],
        imageOfSora: json["imageOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'numberOfJoza': numberOfJoza,
      'numberOfHizb':numberOfHizb,
      'numberOfPage': numberOfPage,
      'imageOfSora': imageOfSora
    };
  }
}