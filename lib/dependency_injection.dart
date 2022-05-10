import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:great_tafseers/core/platform/network_info.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_local_data_source.dart';
import 'package:great_tafseers/features/home_page/data/datasources/home_page_remote_data_source.dart';
import 'package:great_tafseers/features/home_page/data/repositories/home_page_repository_impl.dart';
import 'package:great_tafseers/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:great_tafseers/features/home_page/domain/usecases/swipe_page_view.dart';
import 'package:great_tafseers/features/home_page/presentation/bloc/home_page_bloc.dart';


final dI = GetIt.instance;

Future<void> init() async{
  //Bloc
  dI.registerFactory(
        () => HomePageBloc(
      swipePageView: dI(),
    ),
  );

  // Use cases
  dI.registerLazySingleton(() => SwipePageView(dI()));

  // Repository
  dI.registerLazySingleton<HomePageRepository>(
  () => HomePageRepositoryImpl(
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

  //! Core
  dI.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(dI()));

  //! External
  dI.registerLazySingleton(() => DataConnectionChecker());

}