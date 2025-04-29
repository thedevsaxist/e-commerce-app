import 'package:get_it/get_it.dart';
import 'package:mvvm_contracts_impl/features/auth/data/repositories/local_database_repo_impl.dart';
import 'package:mvvm_contracts_impl/features/auth/data/services/secure_storage_service.dart';
import 'package:mvvm_contracts_impl/features/auth/data/services/user_profile_local_database.dart';
import 'package:mvvm_contracts_impl/features/auth/domain/repo/local_database_repo.dart';
import '../features/auth/data/services/auth_service.dart';
import '/features/auth/data/repositories/auth_service_repo_impl.dart';
import '/features/auth/domain/repo/auth_service_repo.dart';
import '/features/auth/domain/usecases/login_usecase.dart';
import '/features/auth/presentation/state/login_screen_view_model.dart';

final sl = GetIt.instance;

void serviceLocator() {
  // services and data sources
  sl.registerLazySingleton<IAuthService>(() => AuthService());
  sl.registerLazySingleton<ISecureStorageService>(() => SecureStorageService());
  sl.registerLazySingleton<ILocalDatabase>(() => UserProfileLocalDatabase());

  // repositories
  sl.registerLazySingleton<AuthServiceRepo>(() => AuthServiceRepoImpl(
        sl<IAuthService>(),
      ));

  sl.registerLazySingleton<LocalDatabaseRepo>(
    () => LocalDatabaseRepoImpl(sl<ILocalDatabase>()),
  );

  // usecases
  sl.registerFactory<LoginUsecase>(
    () => LoginUsecase(
      sl<AuthServiceRepo>(),
      sl<ISecureStorageService>(),
      sl<LocalDatabaseRepo>(),
    ),
  );

  // viewmodels
  sl.registerLazySingleton<ILoginScreenViewModel>(
    () => LoginScreenViewModel(sl<LoginUsecase>()),
  );
}
