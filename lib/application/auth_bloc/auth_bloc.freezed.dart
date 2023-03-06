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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_SignUpUser value) signUpUser,
    required TResult Function(_LoginAsGuest value) loginAsGuest,
    required TResult Function(_ChangeButton value) changeButton,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInUserCopyWith<$Res> {
  factory _$$_SignInUserCopyWith(
          _$_SignInUser value, $Res Function(_$_SignInUser) then) =
      __$$_SignInUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInUser>
    implements _$$_SignInUserCopyWith<$Res> {
  __$$_SignInUserCopyWithImpl(
      _$_SignInUser _value, $Res Function(_$_SignInUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
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
            other is _$_SignInUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInUserCopyWith<_$_SignInUser> get copyWith =>
      __$$_SignInUserCopyWithImpl<_$_SignInUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
    required TResult Function() logout,
  }) {
    return signInUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
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
    TResult Function()? logout,
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
    required TResult Function(_Logout value) logout,
  }) {
    return signInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
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
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(this);
    }
    return orElse();
  }
}

abstract class _SignInUser implements AuthEvent {
  factory _SignInUser(
      {required final String email,
      required final String password}) = _$_SignInUser;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInUserCopyWith<_$_SignInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpUserCopyWith<$Res> {
  factory _$$_SignUpUserCopyWith(
          _$_SignUpUser value, $Res Function(_$_SignUpUser) then) =
      __$$_SignUpUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignUpUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpUser>
    implements _$$_SignUpUserCopyWith<$Res> {
  __$$_SignUpUserCopyWithImpl(
      _$_SignUpUser _value, $Res Function(_$_SignUpUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
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
            other is _$_SignUpUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpUserCopyWith<_$_SignUpUser> get copyWith =>
      __$$_SignUpUserCopyWithImpl<_$_SignUpUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
    required TResult Function() logout,
  }) {
    return signUpUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
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
    TResult Function()? logout,
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
    required TResult Function(_Logout value) logout,
  }) {
    return signUpUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
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
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signUpUser != null) {
      return signUpUser(this);
    }
    return orElse();
  }
}

abstract class _SignUpUser implements AuthEvent {
  factory _SignUpUser(
      {required final String email,
      required final String password}) = _$_SignUpUser;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignUpUserCopyWith<_$_SignUpUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginAsGuestCopyWith<$Res> {
  factory _$$_LoginAsGuestCopyWith(
          _$_LoginAsGuest value, $Res Function(_$_LoginAsGuest) then) =
      __$$_LoginAsGuestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginAsGuestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoginAsGuest>
    implements _$$_LoginAsGuestCopyWith<$Res> {
  __$$_LoginAsGuestCopyWithImpl(
      _$_LoginAsGuest _value, $Res Function(_$_LoginAsGuest) _then)
      : super(_value, _then);
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
        (other.runtimeType == runtimeType && other is _$_LoginAsGuest);
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
    required TResult Function() logout,
  }) {
    return loginAsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
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
    TResult Function()? logout,
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
    required TResult Function(_Logout value) logout,
  }) {
    return loginAsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
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
    TResult Function(_Logout value)? logout,
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
abstract class _$$_ChangeButtonCopyWith<$Res> {
  factory _$$_ChangeButtonCopyWith(
          _$_ChangeButton value, $Res Function(_$_ChangeButton) then) =
      __$$_ChangeButtonCopyWithImpl<$Res>;
  @useResult
  $Res call({String btnFunc});
}

/// @nodoc
class __$$_ChangeButtonCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ChangeButton>
    implements _$$_ChangeButtonCopyWith<$Res> {
  __$$_ChangeButtonCopyWithImpl(
      _$_ChangeButton _value, $Res Function(_$_ChangeButton) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? btnFunc = null,
  }) {
    return _then(_$_ChangeButton(
      btnFunc: null == btnFunc
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
            other is _$_ChangeButton &&
            (identical(other.btnFunc, btnFunc) || other.btnFunc == btnFunc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, btnFunc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeButtonCopyWith<_$_ChangeButton> get copyWith =>
      __$$_ChangeButtonCopyWithImpl<_$_ChangeButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInUser,
    required TResult Function(String email, String password) signUpUser,
    required TResult Function() loginAsGuest,
    required TResult Function(String btnFunc) changeButton,
    required TResult Function() logout,
  }) {
    return changeButton(btnFunc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
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
    TResult Function()? logout,
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
    required TResult Function(_Logout value) logout,
  }) {
    return changeButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
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
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (changeButton != null) {
      return changeButton(this);
    }
    return orElse();
  }
}

abstract class _ChangeButton implements AuthEvent {
  factory _ChangeButton({required final String btnFunc}) = _$_ChangeButton;

  String get btnFunc;
  @JsonKey(ignore: true)
  _$$_ChangeButtonCopyWith<_$_ChangeButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
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
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInUser,
    TResult? Function(String email, String password)? signUpUser,
    TResult? Function()? loginAsGuest,
    TResult? Function(String btnFunc)? changeButton,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInUser,
    TResult Function(String email, String password)? signUpUser,
    TResult Function()? loginAsGuest,
    TResult Function(String btnFunc)? changeButton,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
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
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInUser value)? signInUser,
    TResult? Function(_SignUpUser value)? signUpUser,
    TResult? Function(_LoginAsGuest value)? loginAsGuest,
    TResult? Function(_ChangeButton value)? changeButton,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_SignUpUser value)? signUpUser,
    TResult Function(_LoginAsGuest value)? loginAsGuest,
    TResult Function(_ChangeButton value)? changeButton,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthState {
  bool get emailValidate => throw _privateConstructorUsedError;
  bool get passwordValidate => throw _privateConstructorUsedError;
  bool get postSignUp => throw _privateConstructorUsedError;
  bool get postSignIn => throw _privateConstructorUsedError;
  bool get postToken => throw _privateConstructorUsedError;
  bool get loginAsGuest => throw _privateConstructorUsedError;
  bool get isSignIn => throw _privateConstructorUsedError;
  bool get navigateToHome => throw _privateConstructorUsedError;
  bool get navigateToAuth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool emailValidate,
      bool passwordValidate,
      bool postSignUp,
      bool postSignIn,
      bool postToken,
      bool loginAsGuest,
      bool isSignIn,
      bool navigateToHome,
      bool navigateToAuth});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValidate = null,
    Object? passwordValidate = null,
    Object? postSignUp = null,
    Object? postSignIn = null,
    Object? postToken = null,
    Object? loginAsGuest = null,
    Object? isSignIn = null,
    Object? navigateToHome = null,
    Object? navigateToAuth = null,
  }) {
    return _then(_value.copyWith(
      emailValidate: null == emailValidate
          ? _value.emailValidate
          : emailValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValidate: null == passwordValidate
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignUp: null == postSignUp
          ? _value.postSignUp
          : postSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignIn: null == postSignIn
          ? _value.postSignIn
          : postSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      postToken: null == postToken
          ? _value.postToken
          : postToken // ignore: cast_nullable_to_non_nullable
              as bool,
      loginAsGuest: null == loginAsGuest
          ? _value.loginAsGuest
          : loginAsGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: null == navigateToHome
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToAuth: null == navigateToAuth
          ? _value.navigateToAuth
          : navigateToAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool emailValidate,
      bool passwordValidate,
      bool postSignUp,
      bool postSignIn,
      bool postToken,
      bool loginAsGuest,
      bool isSignIn,
      bool navigateToHome,
      bool navigateToAuth});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailValidate = null,
    Object? passwordValidate = null,
    Object? postSignUp = null,
    Object? postSignIn = null,
    Object? postToken = null,
    Object? loginAsGuest = null,
    Object? isSignIn = null,
    Object? navigateToHome = null,
    Object? navigateToAuth = null,
  }) {
    return _then(_$_AuthState(
      emailValidate: null == emailValidate
          ? _value.emailValidate
          : emailValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordValidate: null == passwordValidate
          ? _value.passwordValidate
          : passwordValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignUp: null == postSignUp
          ? _value.postSignUp
          : postSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      postSignIn: null == postSignIn
          ? _value.postSignIn
          : postSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      postToken: null == postToken
          ? _value.postToken
          : postToken // ignore: cast_nullable_to_non_nullable
              as bool,
      loginAsGuest: null == loginAsGuest
          ? _value.loginAsGuest
          : loginAsGuest // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignIn: null == isSignIn
          ? _value.isSignIn
          : isSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: null == navigateToHome
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToAuth: null == navigateToAuth
          ? _value.navigateToAuth
          : navigateToAuth // ignore: cast_nullable_to_non_nullable
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
      this.isSignIn = true,
      this.navigateToHome = false,
      this.navigateToAuth = false});

  @override
  @JsonKey()
  final bool emailValidate;
  @override
  @JsonKey()
  final bool passwordValidate;
  @override
  @JsonKey()
  final bool postSignUp;
  @override
  @JsonKey()
  final bool postSignIn;
  @override
  @JsonKey()
  final bool postToken;
  @override
  @JsonKey()
  final bool loginAsGuest;
  @override
  @JsonKey()
  final bool isSignIn;
  @override
  @JsonKey()
  final bool navigateToHome;
  @override
  @JsonKey()
  final bool navigateToAuth;

  @override
  String toString() {
    return 'AuthState(emailValidate: $emailValidate, passwordValidate: $passwordValidate, postSignUp: $postSignUp, postSignIn: $postSignIn, postToken: $postToken, loginAsGuest: $loginAsGuest, isSignIn: $isSignIn, navigateToHome: $navigateToHome, navigateToAuth: $navigateToAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.emailValidate, emailValidate) ||
                other.emailValidate == emailValidate) &&
            (identical(other.passwordValidate, passwordValidate) ||
                other.passwordValidate == passwordValidate) &&
            (identical(other.postSignUp, postSignUp) ||
                other.postSignUp == postSignUp) &&
            (identical(other.postSignIn, postSignIn) ||
                other.postSignIn == postSignIn) &&
            (identical(other.postToken, postToken) ||
                other.postToken == postToken) &&
            (identical(other.loginAsGuest, loginAsGuest) ||
                other.loginAsGuest == loginAsGuest) &&
            (identical(other.isSignIn, isSignIn) ||
                other.isSignIn == isSignIn) &&
            (identical(other.navigateToHome, navigateToHome) ||
                other.navigateToHome == navigateToHome) &&
            (identical(other.navigateToAuth, navigateToAuth) ||
                other.navigateToAuth == navigateToAuth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailValidate,
      passwordValidate,
      postSignUp,
      postSignIn,
      postToken,
      loginAsGuest,
      isSignIn,
      navigateToHome,
      navigateToAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool emailValidate,
      final bool passwordValidate,
      final bool postSignUp,
      final bool postSignIn,
      final bool postToken,
      final bool loginAsGuest,
      final bool isSignIn,
      final bool navigateToHome,
      final bool navigateToAuth}) = _$_AuthState;

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
  bool get navigateToHome;
  @override
  bool get navigateToAuth;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
