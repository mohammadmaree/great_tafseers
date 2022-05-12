import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/exception.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_local_data_source.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:great_tafseers/features/home_page/domain/entities/home_page.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';

class HomePageRepositoryImpl implements HomePageRepository{
  final HomePageRemoteDataSource remoteDataSource;
  final HomePageLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  HomePageRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, HomePage>> PageViewSwipe(int index)async {
    try {
      final localHome = await localDataSource.pageViewSwipe(index);
      return Right(localHome);
    } on CacheException {
      return  Left(CacheFailure());
    }
  }
}