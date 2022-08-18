// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotosEventTearOff {
  const _$PhotosEventTearOff();

  _GetPhotos getPhotos() {
    return _GetPhotos();
  }
}

/// @nodoc
const $PhotosEvent = _$PhotosEventTearOff();

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosEventCopyWith<$Res> {
  factory $PhotosEventCopyWith(
          PhotosEvent value, $Res Function(PhotosEvent) then) =
      _$PhotosEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotosEventCopyWithImpl<$Res> implements $PhotosEventCopyWith<$Res> {
  _$PhotosEventCopyWithImpl(this._value, this._then);

  final PhotosEvent _value;
  // ignore: unused_field
  final $Res Function(PhotosEvent) _then;
}

/// @nodoc
abstract class _$GetPhotosCopyWith<$Res> {
  factory _$GetPhotosCopyWith(
          _GetPhotos value, $Res Function(_GetPhotos) then) =
      __$GetPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPhotosCopyWithImpl<$Res> extends _$PhotosEventCopyWithImpl<$Res>
    implements _$GetPhotosCopyWith<$Res> {
  __$GetPhotosCopyWithImpl(_GetPhotos _value, $Res Function(_GetPhotos) _then)
      : super(_value, (v) => _then(v as _GetPhotos));

  @override
  _GetPhotos get _value => super._value as _GetPhotos;
}

/// @nodoc

class _$_GetPhotos implements _GetPhotos {
  _$_GetPhotos();

  @override
  String toString() {
    return 'PhotosEvent.getPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhotos,
  }) {
    return getPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPhotos,
  }) {
    return getPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhotos,
    required TResult orElse(),
  }) {
    if (getPhotos != null) {
      return getPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPhotos value) getPhotos,
  }) {
    return getPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
  }) {
    return getPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPhotos value)? getPhotos,
    required TResult orElse(),
  }) {
    if (getPhotos != null) {
      return getPhotos(this);
    }
    return orElse();
  }
}

abstract class _GetPhotos implements PhotosEvent {
  factory _GetPhotos() = _$_GetPhotos;
}

/// @nodoc
class _$PhotosStateTearOff {
  const _$PhotosStateTearOff();

  _PhotosState call(
      {bool hasData = false, PhotoListModel? photosModel = null}) {
    return _PhotosState(
      hasData: hasData,
      photosModel: photosModel,
    );
  }
}

/// @nodoc
const $PhotosState = _$PhotosStateTearOff();

/// @nodoc
mixin _$PhotosState {
  bool get hasData => throw _privateConstructorUsedError;
  PhotoListModel? get photosModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res>;
  $Res call({bool hasData, PhotoListModel? photosModel});
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res> implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  final PhotosState _value;
  // ignore: unused_field
  final $Res Function(PhotosState) _then;

  @override
  $Res call({
    Object? hasData = freezed,
    Object? photosModel = freezed,
  }) {
    return _then(_value.copyWith(
      hasData: hasData == freezed
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      photosModel: photosModel == freezed
          ? _value.photosModel
          : photosModel // ignore: cast_nullable_to_non_nullable
              as PhotoListModel?,
    ));
  }
}

/// @nodoc
abstract class _$PhotosStateCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$PhotosStateCopyWith(
          _PhotosState value, $Res Function(_PhotosState) then) =
      __$PhotosStateCopyWithImpl<$Res>;
  @override
  $Res call({bool hasData, PhotoListModel? photosModel});
}

/// @nodoc
class __$PhotosStateCopyWithImpl<$Res> extends _$PhotosStateCopyWithImpl<$Res>
    implements _$PhotosStateCopyWith<$Res> {
  __$PhotosStateCopyWithImpl(
      _PhotosState _value, $Res Function(_PhotosState) _then)
      : super(_value, (v) => _then(v as _PhotosState));

  @override
  _PhotosState get _value => super._value as _PhotosState;

  @override
  $Res call({
    Object? hasData = freezed,
    Object? photosModel = freezed,
  }) {
    return _then(_PhotosState(
      hasData: hasData == freezed
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      photosModel: photosModel == freezed
          ? _value.photosModel
          : photosModel // ignore: cast_nullable_to_non_nullable
              as PhotoListModel?,
    ));
  }
}

/// @nodoc

class _$_PhotosState implements _PhotosState {
  const _$_PhotosState({this.hasData = false, this.photosModel = null});

  @JsonKey()
  @override
  final bool hasData;
  @JsonKey()
  @override
  final PhotoListModel? photosModel;

  @override
  String toString() {
    return 'PhotosState(hasData: $hasData, photosModel: $photosModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotosState &&
            const DeepCollectionEquality().equals(other.hasData, hasData) &&
            const DeepCollectionEquality()
                .equals(other.photosModel, photosModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasData),
      const DeepCollectionEquality().hash(photosModel));

  @JsonKey(ignore: true)
  @override
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      __$PhotosStateCopyWithImpl<_PhotosState>(this, _$identity);
}

abstract class _PhotosState implements PhotosState {
  const factory _PhotosState({bool hasData, PhotoListModel? photosModel}) =
      _$_PhotosState;

  @override
  bool get hasData;
  @override
  PhotoListModel? get photosModel;
  @override
  @JsonKey(ignore: true)
  _$PhotosStateCopyWith<_PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}
