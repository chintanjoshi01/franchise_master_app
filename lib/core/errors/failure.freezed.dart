// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) validationFailure,
    required TResult Function(String message) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? validationFailure,
    TResult? Function(String message)? unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? validationFailure,
    TResult Function(String message)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ValidationFailure value) validationFailure,
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ValidationFailure value)? validationFailure,
    TResult? Function(UnexpectedFailure value)? unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ValidationFailure value)? validationFailure,
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  const _$ServerFailureImpl({required this.message, this.statusCode})
      : super._();

  @override
  final String message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) validationFailure,
    required TResult Function(String message) unexpectedFailure,
  }) {
    return serverFailure(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? validationFailure,
    TResult? Function(String message)? unexpectedFailure,
  }) {
    return serverFailure?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? validationFailure,
    TResult Function(String message)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ValidationFailure value) validationFailure,
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ValidationFailure value)? validationFailure,
    TResult? Function(UnexpectedFailure value)? unexpectedFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ValidationFailure value)? validationFailure,
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure(
      {required final String message,
      final int? statusCode}) = _$ServerFailureImpl;
  const ServerFailure._() : super._();

  @override
  String get message;
  int? get statusCode;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(_$ValidationFailureImpl value,
          $Res Function(_$ValidationFailureImpl) then) =
      __$$ValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(_$ValidationFailureImpl _value,
      $Res Function(_$ValidationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ValidationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidationFailureImpl extends ValidationFailure {
  const _$ValidationFailureImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.validationFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) validationFailure,
    required TResult Function(String message) unexpectedFailure,
  }) {
    return validationFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? validationFailure,
    TResult? Function(String message)? unexpectedFailure,
  }) {
    return validationFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? validationFailure,
    TResult Function(String message)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (validationFailure != null) {
      return validationFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ValidationFailure value) validationFailure,
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) {
    return validationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ValidationFailure value)? validationFailure,
    TResult? Function(UnexpectedFailure value)? unexpectedFailure,
  }) {
    return validationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ValidationFailure value)? validationFailure,
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (validationFailure != null) {
      return validationFailure(this);
    }
    return orElse();
  }
}

abstract class ValidationFailure extends Failure {
  const factory ValidationFailure({required final String message}) =
      _$ValidationFailureImpl;
  const ValidationFailure._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(_$UnexpectedFailureImpl value,
          $Res Function(_$UnexpectedFailureImpl) then) =
      __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(_$UnexpectedFailureImpl _value,
      $Res Function(_$UnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedFailureImpl extends UnexpectedFailure {
  const _$UnexpectedFailureImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unexpectedFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? statusCode) serverFailure,
    required TResult Function(String message) validationFailure,
    required TResult Function(String message) unexpectedFailure,
  }) {
    return unexpectedFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? statusCode)? serverFailure,
    TResult? Function(String message)? validationFailure,
    TResult? Function(String message)? unexpectedFailure,
  }) {
    return unexpectedFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? statusCode)? serverFailure,
    TResult Function(String message)? validationFailure,
    TResult Function(String message)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ValidationFailure value) validationFailure,
    required TResult Function(UnexpectedFailure value) unexpectedFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ValidationFailure value)? validationFailure,
    TResult? Function(UnexpectedFailure value)? unexpectedFailure,
  }) {
    return unexpectedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ValidationFailure value)? validationFailure,
    TResult Function(UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure extends Failure {
  const factory UnexpectedFailure({required final String message}) =
      _$UnexpectedFailureImpl;
  const UnexpectedFailure._() : super._();

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
