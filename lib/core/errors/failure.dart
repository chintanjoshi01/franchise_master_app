// lib/core/errors/failure.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart'; // This file will be generated

/// A base class for all failures in the application.
/// This allows us to handle different types of errors in a standardized way.
@freezed
abstract class Failure with _$Failure {
  const Failure._(); // Private constructor for methods

  /// Used for server-side errors (e.g., 404 Not Found, 500 Internal Server Error).
  const factory Failure.serverFailure({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  /// Used for client-side validation errors (e.g., empty fields, invalid email format).
  const factory Failure.validationFailure({
    required String message,
  }) = ValidationFailure;

  /// Used for unexpected errors that are not covered by other failure types.
  const factory Failure.unexpectedFailure({
    required String message,
  }) = UnexpectedFailure;

  // You can add a computed property to get the message from any failure type
  String get message {
    return when(
      serverFailure: (message, _) => message,
      validationFailure: (message) => message,
      unexpectedFailure: (message) => message,
    );
  }
}