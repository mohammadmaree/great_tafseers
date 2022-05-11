
import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

abstract class PlayPageRepository{
  Future<Either<Failure,PlayPage>> choosePlay(String selected);
}