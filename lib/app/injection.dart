// lib/app/injection.dart
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// IGNORE THE ERROR ON THE LINE BELOW. IT WILL BE FIXED IN THE NEXT STEP.
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // This defines the function name
  preferRelativeImports: true,
  asExtension: false,
)
// This line now calls the correct generated function
void configureDependencies() => $initGetIt(getIt);