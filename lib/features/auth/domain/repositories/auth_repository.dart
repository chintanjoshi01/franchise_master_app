// lib/features/auth/domain/repositories/auth_repository.dart

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart'; // Add dartz: ^0.10.1 to pubspec.yaml

// Note: You need to add `dartz` to your pubspec.yaml for Either
// fvm pub add dartz

abstract class AuthRepository {
  Future<Either<Failure, void>> login({
    required String mobileNumber,
    required String password,
  });
}
