import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';

class HomeModel extends HomePage {
  const HomeModel(
      {required String nameOfSora,
        required String numberOfJoza,
        required String numberOfPage,
        required String imageOfSora})
      : super(
      nameOfSora: nameOfSora,
      numberOfJoza: numberOfJoza,
      numberOfPage: numberOfPage,
      imageOfSora: imageOfSora);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
        nameOfSora: json["nameOfSora"],
        numberOfJoza: json["numberOfJoza"],
        numberOfPage: json["numberOfPage"],
        imageOfSora: json["imageOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'numberOfJoza': numberOfJoza,
      'numberOfPage': numberOfPage,
      'imageOfSora': imageOfSora
    };
  }
}