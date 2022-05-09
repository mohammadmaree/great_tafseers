
import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/usecases/usecase.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';

class SwipePageView implements UseCase<HomePage,Params>{
  final HomePageRepository repository;

  SwipePageView(this.repository);

  @override
  Future<Either<Failure, HomePage>> call(Params params) async {
    return await repository.PageViewSwipe(params.number);
  }
}