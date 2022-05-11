import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';

class SettingsModel extends SettingsPage {
  const SettingsModel(
      {required List<String> readers,
        required List<String> soras,
        required List<String> mySoras,
        required List<String> tafasir,
        required List<String> tarajim,
        required List<String> soraStopTime,
      })
      : super(
    readers: readers,
    soras: soras,
    mySoras : mySoras,
    tafasir: tafasir,
    tarajim: tarajim,
    soraStopTime: soraStopTime,
  );

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      readers: json["readers"],
      soras: json["soras"],
      mySoras: json["mySoras"],
      tafasir: json["tafasir"],
      tarajim: json["tarajim"],
      soraStopTime: json["soraStopTime"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'readers': readers,
      'soras': soras,
      'mySoras':mySoras,
      'tafasir': tafasir,
      'tarajim': tarajim,
      'soraStopTime':soraStopTime,
    };
  }
}