// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/api/api_service.dart' as _i589;
import '../features/auth/data/datasources/auth_remote_data_source.dart'
    as _i719;
import '../features/auth/data/repositories/auth_repository_impl.dart' as _i570;
import '../features/auth/domain/repositories/auth_repository.dart' as _i869;
import '../features/auth/domain/usecases/login_usecase.dart' as _i406;
import '../features/auth/presentation/bloc/login_bloc.dart' as _i724;
import 'di/dio_module.dart' as _i49;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  gh.factory<_i589.ApiService>(() => _i589.ApiService());
  gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i719.AuthRemoteDataSource>(
      () => dioModule.authRemoteDataSource(gh<_i361.Dio>()));
  gh.lazySingleton<_i869.AuthRepository>(
      () => _i570.AuthRepositoryImpl(gh<_i719.AuthRemoteDataSource>()));
  gh.factory<_i406.LoginUseCase>(
      () => _i406.LoginUseCase(gh<_i869.AuthRepository>()));
  gh.factory<_i724.LoginBloc>(() => _i724.LoginBloc(gh<_i406.LoginUseCase>()));
  return getIt;
}

class _$DioModule extends _i49.DioModule {}
