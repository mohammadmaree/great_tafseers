
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';

abstract class SettingsPageRemoteDataSource{
  Future<SettingsPage> chooseReader(String reader);
  Future<SettingsPage> chooseSora(String sora);
  Future<SettingsPage> mySoras(List<String> mySoras);
  Future<SettingsPage> chooseTafsir(String tafsir);
  Future<SettingsPage> chooseTarajim(String tarajim);
  Future<SettingsPage> chooseTimeStop(String mySora);
}
class SettingsPageRemoteDataSourceImpl implements SettingsPageRemoteDataSource{
  @override
  Future<SettingsPage> chooseReader(String reader) {
    throw UnimplementedError();
  }

  @override
  Future<SettingsPage> chooseSora(String sora) {
    throw UnimplementedError();
  }

  @override
  Future<SettingsPage> chooseTimeStop(String mySora) {
    throw UnimplementedError();
  }

  @override
  Future<SettingsPage> chooseTafsir(String tafsir) {
    throw UnimplementedError();
  }

  @override
  Future<SettingsPage> chooseTarajim(String tarajim) {
    throw UnimplementedError();
  }

  @override
  Future<SettingsPage> mySoras(List<String> mySora) {
    throw UnimplementedError();
  }

}