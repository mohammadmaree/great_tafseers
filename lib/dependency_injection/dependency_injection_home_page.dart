import 'package:get_it/get_it.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_local_data_source.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:great_tafseers/features/home_page/data/repositories/home_page_repository_impl.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/change_page_view_index.dart';
import 'package:great_tafseers/features/home_page/presentation/bloc/home_page_bloc.dart';

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


  // HomePageRepository
  dI.registerLazySingleton<HomePageRepository>(
  () => HomePageRepositoryImpl(
    localDataSource:dI(),
  ),
  );



  // Data sources
  dI.registerLazySingleton<HomePageRemoteDataSource>(
  () => HomePageRemoteDataSourceImpl(),
  );

  dI.registerLazySingleton<HomePageLocalDataSource>(
  () => HomePageLocalDataSourceImpl(),
  );




  //! Core
  dI.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dI()));

  //! External
  dI.registerLazySingleton(() => InternetConnectionChecker());

}