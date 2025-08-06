import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

enum FormStatus { initial, invalid, valid, submitting, success, failure }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String mobile,
    @Default('') String password,
    @Default(FormStatus.initial) FormStatus status,
    String? errorMessage,
  }) = _LoginState;
}