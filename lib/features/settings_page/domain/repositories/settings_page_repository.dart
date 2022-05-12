import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';

abstract class SettingsPageRepository{
  Future<Either<Failure,SettingsPage>> chooseReader(String reader);
  Future<Either<Failure,SettingsPage>> chooseSora(String sora);
  Future<Either<Failure,SettingsPage>> mySoras(List<String> mySoras);
  Future<Either<Failure,SettingsPage>> chooseTafsir(String tafsir);
  Future<Either<Failure,SettingsPage>> chooseTarajim(String tarajim);
  Future<Either<Failure,SettingsPage>> chooseTimeStop(String time);
}