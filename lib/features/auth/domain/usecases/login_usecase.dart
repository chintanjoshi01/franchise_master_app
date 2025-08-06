// lib/features/auth/domain/usecases/login_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failure.dart';
import '../repositories/auth_repository.dart';

@injectable
class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<Failure, void>> call({
    required String mobileNumber,
    required String password,
  }) {
    // Here you could add more business logic, e.g., validation
    if (mobileNumber.isEmpty || password.isEmpty) {
      return Future.value(
          const Left(ValidationFailure(message: "Fields cannot be empty")));
    }
    return _repository.login(mobileNumber: mobileNumber, password: password);
  }
}
