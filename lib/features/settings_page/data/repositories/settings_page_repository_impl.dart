import 'package:dartz/dartz.dart';
import 'package:great_tafseers/core/error/failures.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/play_page/domain/entities/play_page.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_local_data_source.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_remote_data_source.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';

class PlayPageRepositoryImpl implements SettingsPageRepository{
  final SettingsPageRemoteDataSource remoteDataSource;
  final SettingsPageLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  PlayPageRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PlayPage>> choosedReader(String reader) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> choosedSora(String sora) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> choosedTimeStop(String mySora) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> choosedtafsir(String tafsir) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> choosedtarajim(String tarajim) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PlayPage>> mySoras(String mySora) {
    throw UnimplementedError();
  }



}