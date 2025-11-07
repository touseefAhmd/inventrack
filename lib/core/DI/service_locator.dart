import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/datasources/auth_data_source.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/usecases/login_usecases.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';

final sl = GetIt.instance;

/// Call this once in `main()` before runApp()
Future<void> init() async {
  // Core dependencies
  sl.registerLazySingleton<Dio>(() => Dio());

  //  Data sources
  // sl.registerLazySingleton<AuthRemoteDataSource>(
  //       () => AuthRemoteDataSourceImpl(sl()),
  // );
  sl.registerLazySingleton<AuthRemoteDataSource>(() => MockAuthRemoteDataSource());

  //  Repositories
  sl.registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(sl()),
  );

  //  Usecases
  sl.registerLazySingleton(() => LoginUsecase(sl()));

  //  Cubits (factories because each screen may create its own instance)
  sl.registerFactory(() => AuthCubit(loginUsecase: sl()));
}
