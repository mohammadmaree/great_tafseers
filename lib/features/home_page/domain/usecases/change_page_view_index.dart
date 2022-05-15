
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';

class ChangePageViewIndex implements UseCase<HomePage,ChangePageViewIndexParams>{
  final HomePageRepository repository;

  ChangePageViewIndex(this.repository);

  @override
  Future<Either<Failure, HomePage>> call(ChangePageViewIndexParams params) async {
    return await repository.ChangePageViewIndex(params.result);
  }
}

class ChangePageViewIndexParams extends Equatable{
  final int result;

  ChangePageViewIndexParams({required this.result});
  @override
  List<Object?> get props => [];
}