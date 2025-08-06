// lib/core/config/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart'; // This file will be generated

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  static final String apiBaseUrl = _Env.apiBaseUrl;
}