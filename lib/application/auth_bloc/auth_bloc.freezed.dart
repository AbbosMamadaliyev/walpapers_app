// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _SignInUser signInUser({required String email, required String password}) {
    return _SignInUser(
      email: email,
      password: password,
    );
  }

  _SignUpUser signUpUser({required String email, required String password}) {
    return _SignUpUser(
      email: email,
      password: password,
    );
  }

  _LoginAsGuest loginAsGuest() {
    return _LoginAsGuest();
  }

  _ChangeButton changeButton({required String btnFunc}) {
    return _ChangeButton(
      btnFunc: btnFunc,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$SignInUserCopyWith<$Res> {
  factory _$SignInUserCopyWith(
          _SignInUser value, $Res Function(_SignInUser) then) =
      __$SignInUserCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignInUserCopyWith<$Res> {
  __$SignInUserCopyWithImpl(
      _SignInUser _value, $Res Function(_SignInUser) _then)
      : super(_value, (v) => _then(v as _SignInUser));

  @override
  _SignInUser get _value => super._value as _SignInUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInUser implements _SignInUser {
  _$_SignInUser({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInUser &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignInUserCopyWith<_SignInUser> get copyWith =>
      __$SignInUserCopyWithImpl<_SignInUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
  }) {
    return signInUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
  }) {
    return signInUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
  }) {
    return signInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
  }) {
    return signInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(this);
    }
    return orElse();
  }
}

abstract class _SignInUser implements AuthEvent {
  factory _SignInUser({required String email, required String password}) =
      _$_SignInUser;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$SignInUserCopyWith<_SignInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpUserCopyWith<$Res> {
  factory _$SignUpUserCopyWith(
          _SignUpUser value, $Res Function(_SignUpUser) then) =
      __$SignUpUserCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$SignUpUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignUpUserCopyWith<$Res> {
  __$SignUpUserCopyWithImpl(
      _SignUpUser _value, $Res Function(_SignUpUser) _then)
      : super(_value, (v) => _then(v as _SignUpUser));

  @override
  _SignUpUser get _value => super._value as _SignUpUser;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUpUser(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpUser implements _SignUpUser {
  _$_SignUpUser({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpUser &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$SignUpUserCopyWith<_SignUpUser> get copyWith =>
      __$SignUpUserCopyWithImpl<_SignUpUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
  }) {
    return signUpUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
  }) {
    return signUpUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
  }) {
    return signUpUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class _SignUpUser implements AuthEvent {
  factory _SignUpUser({required String email, required String password}) =
      _$_SignUpUser;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$SignUpUserCopyWith<_SignUpUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginAsGuestCopyWith<$Res> {
  factory _$LoginAsGuestCopyWith(
          _LoginAsGuest value, $Res Function(_LoginAsGuest) then) =
      __$LoginAsGuestCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginAsGuestCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginAsGuestCopyWith<$Res> {
  __$LoginAsGuestCopyWithImpl(
      _LoginAsGuest _value, $Res Function(_LoginAsGuest) _then)
      : super(_value, (v) => _then(v as _LoginAsGuest));

  @override
  _LoginAsGuest get _value => super._value as _LoginAsGuest;
}

/// @nodoc

class _$_LoginAsGuest implements _LoginAsGuest {
  _$_LoginAsGuest();

  @override
  String toString() {
    return 'AuthEvent.loginAsGuest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginAsGuest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
  }) {
    return loginAsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
  }) {
    return loginAsGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    required TResult orElse(),
  }) {
    if (loginAsGuest != null) {
      return loginAsGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
  }) {
    return loginAsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
  }) {
    return loginAsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    required TResult orElse(),
  }) {
    if (loginAsGuest != null) {
      return loginAsGuest(this);
    }
    return orElse();
  }
}

abstract class _LoginAsGuest implements AuthEvent {
  factory _LoginAsGuest() = _$_LoginAsGuest;
}

/// @nodoc
abstract class _$ChangeButtonCopyWith<$Res> {
  factory _$ChangeButtonCopyWith(
          _ChangeButton value, $Res Function(_ChangeButton) then) =
      __$ChangeButtonCopyWithImpl<$Res>;
  $Res call({String btnFunc});
}

/// @nodoc
class __$ChangeButtonCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$ChangeButtonCopyWith<$Res> {
  __$ChangeButtonCopyWithImpl(
      _ChangeButton _value, $Res Function(_ChangeButton) _then)
      : super(_value, (v) => _then(v as _ChangeButton));

  @override
  _ChangeButton get _value => super._value as _ChangeButton;

  @override
  $Res call({
    Object? btnFunc = freezed,
  }) {
    return _then(_ChangeButton(
      btnFunc: btnFunc == freezed
          ? _value.btnFunc
          : btnFunc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeButton implements _ChangeButton {
  _$_ChangeButton({required this.btnFunc});

  @override
  final String btnFunc;

  @override
  String toString() {
    return 'AuthEvent.changeButton(btnFunc: $btnFunc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeButton &&
            const DeepCollectionEquality().equals(other.btnFunc, btnFunc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(btnFunc));

  @JsonKey(ignore: true)
  @override
  _$ChangeButtonCopyWith<_ChangeButton> get copyWith =>
      __$ChangeButtonCopyWithImpl<_ChangeButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
  }) {
    return changeButton(btnFunc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
  }) {
    return changeButton?.call(btnFunc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    required TResult orElse(),
  }) {
    if (changeButton != null) {
      return changeButton(btnFunc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
  }) {
    return changeButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
  }) {
    return changeButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    required TResult orElse(),
  }) {
    if (changeButton != null) {
      return changeButton(this);
    }
    return orElse();
  }
}

abstract class _ChangeButton implements AuthEvent {
  factory _ChangeButton({required String btnFunc}) = _$_ChangeButton;

  String get btnFunc;
  @JsonKey(ignore: true)
  _$ChangeButtonCopyWith<_ChangeButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {bool emailValidate = true,
      bool passwordValidate = true,
      bool postSignUp = false,
      bool postSignIn = false,
      bool postToken = false,
      bool loginAsGuest = false,
      bool isSignIn = true}) {
    return _AuthState(
      emailValidate: emailValidate,
      passwordValidate: passwordValidate,
      postSignUp: postSignUp,
      postSignIn: postSignIn,
      postToken: postToken,
      loginAsGuest: loginAsGuest,
      isSignIn: isSignIn,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get emailValidate => throw _privateConstructorUsedError;
  bool get passwordValidate => throw _privateConstructorUsedError;
  bool get postSignUp => throw _privateConstructorUsedError;
  bool get postSignIn => throw _privateConstructorUsedError;
  bool get postToken => throw _privateConstructorUsedError;
  bool get loginAsGuest => throw _privateConstructorUsedError;
  bool get isSignIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool emailValidate,
      bool passwordValidate,
      bool postSignUp,
      bool postSignIn,
      bool postToken,
      bool loginAsGuest,
      bool isSignIn});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? emailValidate = freezed,
    Object? passwordValidate = freezed,
    Object? postSignUp = freezed,
    Object? postSignIn = freezed,
    Object? postToken = freezed,
    Object? loginAsGuest = freezed,
    Object? isSignIn = freezed,
  }) {
    return _then(_value.copyWith(
      emailValidate: emailValidate == freezed
          ? _value.emailValidate
          : emailValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValidate: passwordValidate == freezed
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignUp: postSignUp == freezed
          ? _value.postSignUp
          : postSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignIn: postSignIn == freezed
          ? _value.postSignIn
          : postSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      postToken: postToken == freezed
          ? _value.postToken
          : postToken // ignore: cast_nullable_to_non_nullable
              as bool,
      loginAsGuest: loginAsGuest == freezed
          ? _value.loginAsGuest
          : loginAsGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: isSignIn == freezed
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool emailValidate,
      bool passwordValidate,
      bool postSignUp,
      bool postSignIn,
      bool postToken,
      bool loginAsGuest,
      bool isSignIn});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? emailValidate = freezed,
    Object? passwordValidate = freezed,
    Object? postSignUp = freezed,
    Object? postSignIn = freezed,
    Object? postToken = freezed,
    Object? loginAsGuest = freezed,
    Object? isSignIn = freezed,
  }) {
    return _then(_AuthState(
      emailValidate: emailValidate == freezed
          ? _value.emailValidate
          : emailValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValidate: passwordValidate == freezed
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignUp: postSignUp == freezed
          ? _value.postSignUp
          : postSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignIn: postSignIn == freezed
          ? _value.postSignIn
          : postSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      postToken: postToken == freezed
          ? _value.postToken
          : postToken // ignore: cast_nullable_to_non_nullable
              as bool,
      loginAsGuest: loginAsGuest == freezed
          ? _value.loginAsGuest
          : loginAsGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: isSignIn == freezed
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.emailValidate = true,
      this.passwordValidate = true,
      this.postSignUp = false,
      this.postSignIn = false,
      this.postToken = false,
      this.loginAsGuest = false,
      this.isSignIn = true});

  @JsonKey()
  @override
  final bool emailValidate;
  @JsonKey()
  @override
  final bool passwordValidate;
  @JsonKey()
  @override
  final bool postSignUp;
  @JsonKey()
  @override
  final bool postSignIn;
  @JsonKey()
  @override
  final bool postToken;
  @JsonKey()
  @override
  final bool loginAsGuest;
  @JsonKey()
  @override
  final bool isSignIn;

  @override
  String toString() {
    return 'AuthState(emailValidate: $emailValidate, passwordValidate: $passwordValidate, postSignUp: $postSignUp, postSignIn: $postSignIn, postToken: $postToken, loginAsGuest: $loginAsGuest, isSignIn: $isSignIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality()
                .equals(other.emailValidate, emailValidate) &&
            const DeepCollectionEquality()
                .equals(other.passwordValidate, passwordValidate) &&
            const DeepCollectionEquality()
                .equals(other.postSignUp, postSignUp) &&
            const DeepCollectionEquality()
                .equals(other.postSignIn, postSignIn) &&
            const DeepCollectionEquality().equals(other.postToken, postToken) &&
            const DeepCollectionEquality()
                .equals(other.loginAsGuest, loginAsGuest) &&
            const DeepCollectionEquality().equals(other.isSignIn, isSignIn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailValidate),
      const DeepCollectionEquality().hash(passwordValidate),
      const DeepCollectionEquality().hash(postSignUp),
      const DeepCollectionEquality().hash(postSignIn),
      const DeepCollectionEquality().hash(postToken),
      const DeepCollectionEquality().hash(loginAsGuest),
      const DeepCollectionEquality().hash(isSignIn));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {bool emailValidate,
      bool passwordValidate,
      bool postSignUp,
      bool postSignIn,
      bool postToken,
      bool loginAsGuest,
      bool isSignIn}) = _$_AuthState;

  @override
  bool get emailValidate;
  @override
  bool get passwordValidate;
  @override
  bool get postSignUp;
  @override
  bool get postSignIn;
  @override
  bool get postToken;
  @override
  bool get loginAsGuest;
  @override
  bool get isSignIn;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
