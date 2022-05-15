import 'package:get_it/get_it.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_local_data_source.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:great_tafseers/features/home_page/data/repositories/home_page_repository_impl.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/change_page_view_index.dart';
import 'package:great_tafseers/features/home_page/presentation/bloc/home_page_bloc.dart';
import 'package:great_tafseers/features/play_page/data/datasources/play_page_remote_data_source.dart';
import 'package:great_tafseers/features/play_page/data/repositories/play_page_repository_impl.dart';
import 'package:great_tafseers/features/play_page/domain/repositories/play_page_repository.dart';
import 'package:great_tafseers/features/play_page/domain/usecases/choose_play.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_remote_data_source.dart';
import 'package:great_tafseers/features/settings_page/data/repositories/settings_page_repository_impl.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_reader.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_sora.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tafsir.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tarajim.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_time_stop.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/my_soras.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


final dI = GetIt.instance;

Future<void> init() async{
  //Bloc
  dI.registerFactory(
        () => HomePageBloc(
      changePageViewIndex: dI(),
    ),
  );

  // Use cases
  dI.registerLazySingleton(() => ChangePageViewIndex(dI()));

  dI.registerLazySingleton(() => ChoosePlay(dI()));

  dI.registerLazySingleton(() => ChooseReader(dI()));
  dI.registerLazySingleton(() => ChooseSora(dI()));
  dI.registerLazySingleton(() => ChooseTafsir(dI()));
  dI.registerLazySingleton(() => ChooseTarajim(dI()));
  dI.registerLazySingleton(() => ChooseTimeStop(dI()));
  dI.registerLazySingleton(() => MySoras(dI()));

  // HomePageRepository
  dI.registerLazySingleton<HomePageRepository>(
  () => HomePageRepositoryImpl(
    localDataSource:dI(),
  ),
  );
  // PlayPageRepository
  dI.registerLazySingleton<PlayPageRepository>(
        () => PlayPageRepositoryImpl(
      localDataSource:dI(),
      networkInfo:dI(),
      remoteDataSource:dI(),
    ),
  );
  // SettingsPageRepository
  dI.registerLazySingleton<SettingsPageRepository>(
        () => SettingsPageRepositoryImpl(
      localDataSource:dI(),
      networkInfo:dI(),
      remoteDataSource:dI(),
    ),
  );

  // Data sources
  dI.registerLazySingleton<HomePageRemoteDataSource>(
  () => HomePageRemoteDataSourceImpl(),
  );

  dI.registerLazySingleton<HomePageLocalDataSource>(
  () => HomePageLocalDataSourceImpl(),
  );

  dI.registerLazySingleton<PlayPageRemoteDataSource>(
        () => PlayPageRemoteDataSourceImpl(),
  );

  dI.registerLazySingleton<SettingsPageRemoteDataSource>(
        () => SettingsPageRemoteDataSourceImpl(),
  );

  //! Core
  dI.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dI()));

  //! External
  dI.registerLazySingleton(() => InternetConnectionChecker());

}