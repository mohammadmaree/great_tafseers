
import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/play_page/data/datasources/play_page_local_data_source.dart';
import 'package:great_tafseers/features/play_page/data/datasources/play_page_remote_data_source.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/play_page/domain/repositories/play_page_repository.dart';

class PlayPageRepositoryImpl implements PlayPageRepository{
  final PlayPageRemoteDataSource remoteDataSource;
  final PlayPageLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  PlayPageRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PlayPage>> chooseHizbPlay(String numberOfHizb) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> chooseJozaPlay(String numberOfJoza) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> choosePagePlay(String numberOfPage) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> chooseSoraPlay(String nameOfSora) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> submit(String result) {
    throw UnimplementedError();
  }

}