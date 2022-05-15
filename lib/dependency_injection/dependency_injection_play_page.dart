import 'package:get_it/get_it.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/play_page/data/datasources/play_page_remote_data_source.dart';
import 'package:great_tafseers/features/play_page/data/repositories/play_page_repository_impl.dart';
import 'package:great_tafseers/features/play_page/domain/repositories/play_page_repository.dart';
import 'package:great_tafseers/features/play_page/domain/usecases/choose_play.dart';
import 'package:great_tafseers/features/play_page/presentaion/bloc/play_page_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final dI = GetIt.instance;

Future<void> init() async{

  //Bloc
  dI.registerFactory(
        () => PlayPageBloc(
      choosePlay: dI()
    ),
  );


  // Use cases
  dI.registerLazySingleton(() => ChoosePlay(dI()));

  // PlayPageRepository
  dI.registerLazySingleton<PlayPageRepository>(
        () => PlayPageRepositoryImpl(
      networkInfo:dI(),
      remoteDataSource:dI(),
    ),
  );

  // Data sources
  dI.registerLazySingleton<PlayPageRemoteDataSource>(
        () => PlayPageRemoteDataSourceImpl(),
  );


  //! Core
  dI.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dI()));

  //! External
  dI.registerLazySingleton(() => InternetConnectionChecker());

}