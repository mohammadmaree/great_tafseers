

import 'package:get_it/get_it.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/settings_page/data/datasources/settings_page_remote_data_source.dart';
import 'package:great_tafseers/features/settings_page/data/repositories/settings_page_repository_impl.dart';
import 'package:great_tafseers/features/settings_page/domain/repositories/settings_page_repository.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_reader.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_sora.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tafsir.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_tarajim.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/choose_time_stop.dart';
import 'package:great_tafseers/features/settings_page/domain/usecases/my_soras.dart';
import 'package:great_tafseers/features/settings_page/presentaion/bloc/settings_page_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final dI = GetIt.instance;

Future<void> init() async{

  //Bloc
  dI.registerFactory(
        () => SettingsPageBloc(),
  );

  // Use cases
  dI.registerLazySingleton(() => ChooseReader(dI()));
  dI.registerLazySingleton(() => ChooseSora(dI()));
  dI.registerLazySingleton(() => ChooseTafsir(dI()));
  dI.registerLazySingleton(() => ChooseTarajim(dI()));
  dI.registerLazySingleton(() => ChooseTimeStop(dI()));
  dI.registerLazySingleton(() => MySoras(dI()));


  dI.registerLazySingleton<SettingsPageRepository>(
        () => SettingsPageRepositoryImpl(
      localDataSource:dI(),
      networkInfo:dI(),
      remoteDataSource:dI(),
    ),
  );

  // Data sources
  dI.registerLazySingleton<SettingsPageRemoteDataSource>(
        () => SettingsPageRemoteDataSourceImpl(),
  );


  //! Core
  dI.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dI()));

  //! External
  dI.registerLazySingleton(() => InternetConnectionChecker());

}