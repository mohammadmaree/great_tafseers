import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_local_data_source.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_remote_data_source.dart';
import 'package:great_tafseers/features/settings_page/domain/entities/settings_page.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class SettingsPageRepositoryImpl implements SettingsPageRepository{
  final SettingsPageRemoteDataSource remoteDataSource;
  final SettingsPageLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  SettingsPageRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, SettingsPage>> chooseReader(String reader) async{
    try {
      final remotePlay = await remoteDataSource.chooseReader(reader);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettingsPage>> chooseSora(String sora)async{
    try {
      final remotePlay = await remoteDataSource.chooseSora(sora);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettingsPage>> chooseTimeStop(String time)async{
    try {
      final remotePlay = await remoteDataSource.chooseTimeStop(time);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettingsPage>> chooseTafsir(String tafsir)async{
    try {
      final remotePlay = await remoteDataSource.chooseTafsir(tafsir);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettingsPage>> chooseTarajim(String tarajim)async{
    try {
      final remotePlay = await remoteDataSource.chooseTarajim(tarajim);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, SettingsPage>> mySoras(List<String> mySora)async{
    try {
      final remotePlay = await remoteDataSource.mySoras(mySora);
      return Right(remotePlay);
    } on Exception {
      return Left(ServerFailure());
    }
  }



}