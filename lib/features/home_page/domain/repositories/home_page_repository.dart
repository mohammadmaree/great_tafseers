import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';

abstract class HomePageRepository{
  Future<Either<Failure,HomePage>> ChangePageViewIndex(int index);
}