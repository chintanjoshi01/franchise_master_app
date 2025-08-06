import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/login_usecase.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(const LoginState()) {
    on<MobileChanged>(_onMobileChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<Submitted>(_onSubmitted);
  }

  void _onMobileChanged(MobileChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(mobile: event.mobile, status: FormStatus.initial));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password, status: FormStatus.initial));
  }

  Future<void> _onSubmitted(Submitted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: FormStatus.submitting));

    final result = await _loginUseCase(
      mobileNumber: state.mobile,
      password: state.password,
    );

    result.fold(
          (failure) => emit(state.copyWith(
        status: FormStatus.failure,
        errorMessage: failure.message,
      )),
          (_) => emit(state.copyWith(status: FormStatus.success)),
    );
  }
}