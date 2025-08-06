// lib/features/auth/data/repositories/auth_repository_impl.dart
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository) // Binds this implementation to the abstract class
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, void>> login({
    required String mobileNumber,
    required String password,
  }) async {
    try {
      await _remoteDataSource.login({
        'mobile': mobileNumber,
        'password': password,
      });
      // TODO: Here you would save the auth token to secure storage
      return const Right(null);
    } on DioException catch (e) {
      // Handle API errors (404, 500, etc.)
      return Left(ServerFailure(message: "Invalid credentials or server error."));
    }
  }
}