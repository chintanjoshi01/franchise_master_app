import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(), // Use DI to get the BLoC instance
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == FormStatus.failure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failed'),
              ));
          }
          if (state.status == FormStatus.success) {
            // TODO: Use go_router to navigate to the dashboard
          }
        },
        child: const SafeArea(
          child: SingleChildScrollView(
            // Center the content vertically and horizontally
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // TODO: Replace with your logo asset
                    // For now, using a Text widget as a placeholder
                    Text(
                      'eresto',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB9262C),
                      ),
                    ),
                    SizedBox(height: 60),
                    _LoginForm(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final bool isSubmitting = state.status == FormStatus.submitting;

        return Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login Now',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Please details below to continue',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 32),

              TextFormField(
                decoration: const InputDecoration(hintText: 'Mobile Number'),
                keyboardType: TextInputType.phone,
                onChanged: (value) => context.read<LoginBloc>().add(LoginEvent.mobileChanged(value)),
              ),
              const SizedBox(height: 20),

              TextFormField(
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
                onChanged: (value) => context.read<LoginBloc>().add(LoginEvent.passwordChanged(value)),
              ),
              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: isSubmitting
                    ? null // Disable button while submitting
                    : () => context.read<LoginBloc>().add(const LoginEvent.submitted()),
                child: isSubmitting
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('LOGIN'),
              ),

              // ... Register link ...
              // Register Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an account? ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: Navigate to Register screen
                    },
                    child: Text(
                      'Register here',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}