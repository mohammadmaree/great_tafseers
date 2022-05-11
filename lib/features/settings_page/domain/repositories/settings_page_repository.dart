import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

abstract class SettingsPageRepository{
  Future<Either<Failure,PlayPage>> choosedReader(String reader);
  Future<Either<Failure,PlayPage>> choosedSora(String sora);
  Future<Either<Failure,PlayPage>> mySoras(String mySora);
  Future<Either<Failure,PlayPage>> choosedtafsir(String tafsir);
  Future<Either<Failure,PlayPage>> choosedtarajim(String tarajim);
  Future<Either<Failure,PlayPage>> choosedTimeStop(String mySora);
}