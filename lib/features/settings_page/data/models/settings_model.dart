import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';

class SettingsModel extends SettingsPage {
  const SettingsModel(
      {required String reader,
        required String sora,
        required List<String> mySoras,
        required String tafsir,
        required String tarajim,
        required String soraStopTime,
      })
      : super(
    reader: reader,
    sora: sora,
    mySoras : mySoras,
    tafsir: tafsir,
    tarajim: tarajim,
    soraStopTime: soraStopTime,
  );

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      reader: json["readers"],
      sora: json["soras"],
      mySoras: json["mySoras"],
      tafsir: json["tafasir"],
      tarajim: json["tarajim"],
      soraStopTime: json["soraStopTime"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'readers': reader,
      'soras': sora,
      'mySoras':mySoras,
      'tafasir': tafsir,
      'tarajim': tarajim,
      'soraStopTime':soraStopTime,
    };
  }
}