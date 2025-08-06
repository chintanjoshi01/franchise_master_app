// lib/features/auth/data/datasources/auth_remote_data_source.dart
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_data_source.g.dart'; // Will be generated

@RestApi()
abstract class AuthRemoteDataSource {

  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/login')
  Future<void> login(@Body() Map<String, dynamic> loginData);
}
