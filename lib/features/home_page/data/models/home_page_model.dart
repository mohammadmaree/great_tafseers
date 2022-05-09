import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';

class HomeModel extends HomePage {
  const HomeModel(
      {required String nameOfSora,
        required String partOfSora,
        required String numberOfPage,
        required String imageOfSora})
      : super(
      nameOfSora: nameOfSora,
      partOfSora: partOfSora,
      numberOfPage: numberOfPage,
      imageOfSora: imageOfSora);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
        nameOfSora: json["nameOfSora"],
        partOfSora: json["partOfSora"],
        numberOfPage: json["numberOfPage"],
        imageOfSora: json["imageOfSora"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'nameOfSora': nameOfSora,
      'partOfSora': partOfSora,
      'numberOfPage': numberOfPage,
      'imageOfSora': imageOfSora
    };
  }
}