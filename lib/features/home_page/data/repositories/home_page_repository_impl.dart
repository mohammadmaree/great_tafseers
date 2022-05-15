import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/exception.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_local_data_source.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';

class HomePageRepositoryImpl implements HomePageRepository{
  final HomePageLocalDataSource localDataSource;

  HomePageRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, HomePage>> ChangePageViewIndex(int index)async {
    try {
      final localHome = await localDataSource.ChangePageViewIndex(index);
      return Right(localHome);
    } on CacheException {
      return  Left(CacheFailure());
    }
  }
}