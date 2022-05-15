import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/play_page/domain/repositories/play_page_repository.dart';

class ChoosePlay implements UseCase<PlayPage,ChoosePlayParams>{
  final PlayPageRepository repository;

  ChoosePlay(this.repository);

  @override
  Future<Either<Failure, PlayPage>> call(ChoosePlayParams params) async{
    return await repository.choosePlay(params.selected,params.nextPage,params.repetition);
  }

}

class ChoosePlayParams extends Equatable{
  final String selected;
  final bool nextPage;
  final bool repetition;

  ChoosePlayParams({
    required this.selected,
    required this.nextPage,
    required this.repetition
  });
  @override
  List<Object?> get props => [];
}
