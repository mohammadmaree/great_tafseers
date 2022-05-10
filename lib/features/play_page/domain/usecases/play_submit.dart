import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';

class PlayOfSora implements UseCase<PlayPage,Params>{
  final String result;

  PlayOfSora(this.result);

  @override
  Future<Either<Failure, PlayPage>> call(Params params) {
    throw UnimplementedError();
  }

}