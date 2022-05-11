import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/play_page/domain/repositories/play_page_repository.dart';

class ChoosePlay implements UseCase<PlayPage,Params>{
  final PlayPageRepository repository;

  ChoosePlay(this.repository);

  @override
  Future<Either<Failure, PlayPage>> call(Params params) async{
    return await repository.choosePlay(params.result);
  }

}
