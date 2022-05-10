
import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

abstract class PlayPageRepository{
  Future<Either<Failure,PlayPage>> chooseJozaPlay(String numberOfJoza);
  Future<Either<Failure,PlayPage>> chooseSoraPlay(String nameOfSora);
  Future<Either<Failure,PlayPage>> choosePagePlay(String numberOfPage);
  Future<Either<Failure,PlayPage>> chooseHizbPlay(String numberOfHizb);
  Future<Either<Failure,PlayPage>> submit(String result);
}