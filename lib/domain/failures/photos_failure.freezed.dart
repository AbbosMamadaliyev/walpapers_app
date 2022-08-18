// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photos_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotosFailureTearOff {
  const _$PhotosFailureTearOff();

  InvalidCredentials invalidCredential({required String message}) {
    return InvalidCredentials(
      message: message,
    );
  }

  NetworkFailure networkFailure({required String message}) {
    return NetworkFailure(
      message: message,
    );
  }

  Unknown unknown({required String message}) {
    return Unknown(
      message: message,
    );
  }
}

/// @nodoc
const $PhotosFailure = _$PhotosFailureTearOff();

/// @nodoc
mixin _$PhotosFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosFailureCopyWith<PhotosFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosFailureCopyWith<$Res> {
  factory $PhotosFailureCopyWith(
          PhotosFailure value, $Res Function(PhotosFailure) then) =
      _$PhotosFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$PhotosFailureCopyWithImpl<$Res>
    implements $PhotosFailureCopyWith<$Res> {
  _$PhotosFailureCopyWithImpl(this._value, this._then);

  final PhotosFailure _value;
  // ignore: unused_field
  final $Res Function(PhotosFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidCredentialsCopyWith<$Res>
    implements $PhotosFailureCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials value, $Res Function(InvalidCredentials) then) =
      _$InvalidCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$InvalidCredentialsCopyWithImpl<$Res>
    extends _$PhotosFailureCopyWithImpl<$Res>
    implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(
      InvalidCredentials _value, $Res Function(InvalidCredentials) _then)
      : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidCredentials(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PhotosFailure.invalidCredential(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidCredentials &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $InvalidCredentialsCopyWith<InvalidCredentials> get copyWith =>
      _$InvalidCredentialsCopyWithImpl<InvalidCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return invalidCredential(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return invalidCredential?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return invalidCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return invalidCredential?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (invalidCredential != null) {
      return invalidCredential(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements PhotosFailure {
  const factory InvalidCredentials({required String message}) =
      _$InvalidCredentials;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $InvalidCredentialsCopyWith<InvalidCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res>
    implements $PhotosFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    extends _$PhotosFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure _value, $Res Function(NetworkFailure) _then)
      : super(_value, (v) => _then(v as NetworkFailure));

  @override
  NetworkFailure get _value => super._value as NetworkFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NetworkFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailure implements NetworkFailure {
  const _$NetworkFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PhotosFailure.networkFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements PhotosFailure {
  const factory NetworkFailure({required String message}) = _$NetworkFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownCopyWith<$Res> implements $PhotosFailureCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res> extends _$PhotosFailureCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PhotosFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnknownCopyWith<Unknown> get copyWith =>
      _$UnknownCopyWithImpl<Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidCredential,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidCredential,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials value) invalidCredential,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials value)? invalidCredential,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements PhotosFailure {
  const factory Unknown({required String message}) = _$Unknown;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $UnknownCopyWith<Unknown> get copyWith => throw _privateConstructorUsedError;
}
