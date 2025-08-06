// lib/app/di/dio_module.dart
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:franchise_master_app/core/config/env.dart';
import 'package:franchise_master_app/features/auth/data/datasources/auth_remote_data_source.dart'; // <-- Import this

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.apiBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    return dio;
  }

  // --- ADD THIS METHOD ---
  // This tells GetIt how to create an AuthRemoteDataSource.
  // It automatically knows it needs a 'Dio' instance and will get it
  // from the 'dio' provider above.
  @lazySingleton
  AuthRemoteDataSource authRemoteDataSource(Dio dio) => AuthRemoteDataSource(dio);
// --------------------
}