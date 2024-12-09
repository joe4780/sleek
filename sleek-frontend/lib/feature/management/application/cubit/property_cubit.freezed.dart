// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PropertyState {
  PropertyStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStatePayload payload) initial,
    required TResult Function(PropertyStatePayload payload) loading,
    required TResult Function(PropertyStatePayload payload) error,
    required TResult Function(PropertyStatePayload payload) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStatePayload payload)? initial,
    TResult? Function(PropertyStatePayload payload)? loading,
    TResult? Function(PropertyStatePayload payload)? error,
    TResult? Function(PropertyStatePayload payload)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStatePayload payload)? initial,
    TResult Function(PropertyStatePayload payload)? loading,
    TResult Function(PropertyStatePayload payload)? error,
    TResult Function(PropertyStatePayload payload)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPropertyState value) initial,
    required TResult Function(_LoadingPropertyState value) loading,
    required TResult Function(_ErrorPropertyState value) error,
    required TResult Function(_LoadedPropertyState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPropertyState value)? initial,
    TResult? Function(_LoadingPropertyState value)? loading,
    TResult? Function(_ErrorPropertyState value)? error,
    TResult? Function(_LoadedPropertyState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPropertyState value)? initial,
    TResult Function(_LoadingPropertyState value)? loading,
    TResult Function(_ErrorPropertyState value)? error,
    TResult Function(_LoadedPropertyState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PropertyStateCopyWith<PropertyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStateCopyWith<$Res> {
  factory $PropertyStateCopyWith(
          PropertyState value, $Res Function(PropertyState) then) =
      _$PropertyStateCopyWithImpl<$Res, PropertyState>;
  @useResult
  $Res call({PropertyStatePayload payload});

  $PropertyStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$PropertyStateCopyWithImpl<$Res, $Val extends PropertyState>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PropertyStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyStatePayloadCopyWith<$Res> get payload {
    return $PropertyStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialPropertyStateImplCopyWith<$Res>
    implements $PropertyStateCopyWith<$Res> {
  factory _$$InitialPropertyStateImplCopyWith(_$InitialPropertyStateImpl value,
          $Res Function(_$InitialPropertyStateImpl) then) =
      __$$InitialPropertyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyStatePayload payload});

  @override
  $PropertyStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialPropertyStateImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$InitialPropertyStateImpl>
    implements _$$InitialPropertyStateImplCopyWith<$Res> {
  __$$InitialPropertyStateImplCopyWithImpl(_$InitialPropertyStateImpl _value,
      $Res Function(_$InitialPropertyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialPropertyStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PropertyStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialPropertyStateImpl implements _InitialPropertyState {
  const _$InitialPropertyStateImpl({required this.payload});

  @override
  final PropertyStatePayload payload;

  @override
  String toString() {
    return 'PropertyState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPropertyStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialPropertyStateImplCopyWith<_$InitialPropertyStateImpl>
      get copyWith =>
          __$$InitialPropertyStateImplCopyWithImpl<_$InitialPropertyStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStatePayload payload) initial,
    required TResult Function(PropertyStatePayload payload) loading,
    required TResult Function(PropertyStatePayload payload) error,
    required TResult Function(PropertyStatePayload payload) loaded,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStatePayload payload)? initial,
    TResult? Function(PropertyStatePayload payload)? loading,
    TResult? Function(PropertyStatePayload payload)? error,
    TResult? Function(PropertyStatePayload payload)? loaded,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStatePayload payload)? initial,
    TResult Function(PropertyStatePayload payload)? loading,
    TResult Function(PropertyStatePayload payload)? error,
    TResult Function(PropertyStatePayload payload)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPropertyState value) initial,
    required TResult Function(_LoadingPropertyState value) loading,
    required TResult Function(_ErrorPropertyState value) error,
    required TResult Function(_LoadedPropertyState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPropertyState value)? initial,
    TResult? Function(_LoadingPropertyState value)? loading,
    TResult? Function(_ErrorPropertyState value)? error,
    TResult? Function(_LoadedPropertyState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPropertyState value)? initial,
    TResult Function(_LoadingPropertyState value)? loading,
    TResult Function(_ErrorPropertyState value)? error,
    TResult Function(_LoadedPropertyState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPropertyState implements PropertyState {
  const factory _InitialPropertyState(
          {required final PropertyStatePayload payload}) =
      _$InitialPropertyStateImpl;

  @override
  PropertyStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialPropertyStateImplCopyWith<_$InitialPropertyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingPropertyStateImplCopyWith<$Res>
    implements $PropertyStateCopyWith<$Res> {
  factory _$$LoadingPropertyStateImplCopyWith(_$LoadingPropertyStateImpl value,
          $Res Function(_$LoadingPropertyStateImpl) then) =
      __$$LoadingPropertyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyStatePayload payload});

  @override
  $PropertyStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingPropertyStateImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$LoadingPropertyStateImpl>
    implements _$$LoadingPropertyStateImplCopyWith<$Res> {
  __$$LoadingPropertyStateImplCopyWithImpl(_$LoadingPropertyStateImpl _value,
      $Res Function(_$LoadingPropertyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingPropertyStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PropertyStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingPropertyStateImpl implements _LoadingPropertyState {
  const _$LoadingPropertyStateImpl({required this.payload});

  @override
  final PropertyStatePayload payload;

  @override
  String toString() {
    return 'PropertyState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingPropertyStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingPropertyStateImplCopyWith<_$LoadingPropertyStateImpl>
      get copyWith =>
          __$$LoadingPropertyStateImplCopyWithImpl<_$LoadingPropertyStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStatePayload payload) initial,
    required TResult Function(PropertyStatePayload payload) loading,
    required TResult Function(PropertyStatePayload payload) error,
    required TResult Function(PropertyStatePayload payload) loaded,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStatePayload payload)? initial,
    TResult? Function(PropertyStatePayload payload)? loading,
    TResult? Function(PropertyStatePayload payload)? error,
    TResult? Function(PropertyStatePayload payload)? loaded,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStatePayload payload)? initial,
    TResult Function(PropertyStatePayload payload)? loading,
    TResult Function(PropertyStatePayload payload)? error,
    TResult Function(PropertyStatePayload payload)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPropertyState value) initial,
    required TResult Function(_LoadingPropertyState value) loading,
    required TResult Function(_ErrorPropertyState value) error,
    required TResult Function(_LoadedPropertyState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPropertyState value)? initial,
    TResult? Function(_LoadingPropertyState value)? loading,
    TResult? Function(_ErrorPropertyState value)? error,
    TResult? Function(_LoadedPropertyState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPropertyState value)? initial,
    TResult Function(_LoadingPropertyState value)? loading,
    TResult Function(_ErrorPropertyState value)? error,
    TResult Function(_LoadedPropertyState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingPropertyState implements PropertyState {
  const factory _LoadingPropertyState(
          {required final PropertyStatePayload payload}) =
      _$LoadingPropertyStateImpl;

  @override
  PropertyStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingPropertyStateImplCopyWith<_$LoadingPropertyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorPropertyStateImplCopyWith<$Res>
    implements $PropertyStateCopyWith<$Res> {
  factory _$$ErrorPropertyStateImplCopyWith(_$ErrorPropertyStateImpl value,
          $Res Function(_$ErrorPropertyStateImpl) then) =
      __$$ErrorPropertyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyStatePayload payload});

  @override
  $PropertyStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorPropertyStateImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$ErrorPropertyStateImpl>
    implements _$$ErrorPropertyStateImplCopyWith<$Res> {
  __$$ErrorPropertyStateImplCopyWithImpl(_$ErrorPropertyStateImpl _value,
      $Res Function(_$ErrorPropertyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorPropertyStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PropertyStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorPropertyStateImpl implements _ErrorPropertyState {
  const _$ErrorPropertyStateImpl({required this.payload});

  @override
  final PropertyStatePayload payload;

  @override
  String toString() {
    return 'PropertyState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorPropertyStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorPropertyStateImplCopyWith<_$ErrorPropertyStateImpl> get copyWith =>
      __$$ErrorPropertyStateImplCopyWithImpl<_$ErrorPropertyStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStatePayload payload) initial,
    required TResult Function(PropertyStatePayload payload) loading,
    required TResult Function(PropertyStatePayload payload) error,
    required TResult Function(PropertyStatePayload payload) loaded,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStatePayload payload)? initial,
    TResult? Function(PropertyStatePayload payload)? loading,
    TResult? Function(PropertyStatePayload payload)? error,
    TResult? Function(PropertyStatePayload payload)? loaded,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStatePayload payload)? initial,
    TResult Function(PropertyStatePayload payload)? loading,
    TResult Function(PropertyStatePayload payload)? error,
    TResult Function(PropertyStatePayload payload)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPropertyState value) initial,
    required TResult Function(_LoadingPropertyState value) loading,
    required TResult Function(_ErrorPropertyState value) error,
    required TResult Function(_LoadedPropertyState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPropertyState value)? initial,
    TResult? Function(_LoadingPropertyState value)? loading,
    TResult? Function(_ErrorPropertyState value)? error,
    TResult? Function(_LoadedPropertyState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPropertyState value)? initial,
    TResult Function(_LoadingPropertyState value)? loading,
    TResult Function(_ErrorPropertyState value)? error,
    TResult Function(_LoadedPropertyState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorPropertyState implements PropertyState {
  const factory _ErrorPropertyState(
      {required final PropertyStatePayload payload}) = _$ErrorPropertyStateImpl;

  @override
  PropertyStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorPropertyStateImplCopyWith<_$ErrorPropertyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedPropertyStateImplCopyWith<$Res>
    implements $PropertyStateCopyWith<$Res> {
  factory _$$LoadedPropertyStateImplCopyWith(_$LoadedPropertyStateImpl value,
          $Res Function(_$LoadedPropertyStateImpl) then) =
      __$$LoadedPropertyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PropertyStatePayload payload});

  @override
  $PropertyStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadedPropertyStateImplCopyWithImpl<$Res>
    extends _$PropertyStateCopyWithImpl<$Res, _$LoadedPropertyStateImpl>
    implements _$$LoadedPropertyStateImplCopyWith<$Res> {
  __$$LoadedPropertyStateImplCopyWithImpl(_$LoadedPropertyStateImpl _value,
      $Res Function(_$LoadedPropertyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadedPropertyStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as PropertyStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadedPropertyStateImpl implements _LoadedPropertyState {
  const _$LoadedPropertyStateImpl({required this.payload});

  @override
  final PropertyStatePayload payload;

  @override
  String toString() {
    return 'PropertyState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedPropertyStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedPropertyStateImplCopyWith<_$LoadedPropertyStateImpl> get copyWith =>
      __$$LoadedPropertyStateImplCopyWithImpl<_$LoadedPropertyStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PropertyStatePayload payload) initial,
    required TResult Function(PropertyStatePayload payload) loading,
    required TResult Function(PropertyStatePayload payload) error,
    required TResult Function(PropertyStatePayload payload) loaded,
  }) {
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PropertyStatePayload payload)? initial,
    TResult? Function(PropertyStatePayload payload)? loading,
    TResult? Function(PropertyStatePayload payload)? error,
    TResult? Function(PropertyStatePayload payload)? loaded,
  }) {
    return loaded?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PropertyStatePayload payload)? initial,
    TResult Function(PropertyStatePayload payload)? loading,
    TResult Function(PropertyStatePayload payload)? error,
    TResult Function(PropertyStatePayload payload)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPropertyState value) initial,
    required TResult Function(_LoadingPropertyState value) loading,
    required TResult Function(_ErrorPropertyState value) error,
    required TResult Function(_LoadedPropertyState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPropertyState value)? initial,
    TResult? Function(_LoadingPropertyState value)? loading,
    TResult? Function(_ErrorPropertyState value)? error,
    TResult? Function(_LoadedPropertyState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPropertyState value)? initial,
    TResult Function(_LoadingPropertyState value)? loading,
    TResult Function(_ErrorPropertyState value)? error,
    TResult Function(_LoadedPropertyState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedPropertyState implements PropertyState {
  const factory _LoadedPropertyState(
          {required final PropertyStatePayload payload}) =
      _$LoadedPropertyStateImpl;

  @override
  PropertyStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadedPropertyStateImplCopyWith<_$LoadedPropertyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyStatePayload _$PropertyStatePayloadFromJson(Map<String, dynamic> json) {
  return _PropertyStatePayload.fromJson(json);
}

/// @nodoc
mixin _$PropertyStatePayload {
  String get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<PropertyModel> get properties => throw _privateConstructorUsedError;
  PropertyModel? get selectedProperty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyStatePayloadCopyWith<PropertyStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyStatePayloadCopyWith<$Res> {
  factory $PropertyStatePayloadCopyWith(PropertyStatePayload value,
          $Res Function(PropertyStatePayload) then) =
      _$PropertyStatePayloadCopyWithImpl<$Res, PropertyStatePayload>;
  @useResult
  $Res call(
      {String error,
      bool isLoading,
      List<PropertyModel> properties,
      PropertyModel? selectedProperty});

  $PropertyModelCopyWith<$Res>? get selectedProperty;
}

/// @nodoc
class _$PropertyStatePayloadCopyWithImpl<$Res,
        $Val extends PropertyStatePayload>
    implements $PropertyStatePayloadCopyWith<$Res> {
  _$PropertyStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? properties = null,
    Object? selectedProperty = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertyModel>,
      selectedProperty: freezed == selectedProperty
          ? _value.selectedProperty
          : selectedProperty // ignore: cast_nullable_to_non_nullable
              as PropertyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyModelCopyWith<$Res>? get selectedProperty {
    if (_value.selectedProperty == null) {
      return null;
    }

    return $PropertyModelCopyWith<$Res>(_value.selectedProperty!, (value) {
      return _then(_value.copyWith(selectedProperty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyStatePayloadImplCopyWith<$Res>
    implements $PropertyStatePayloadCopyWith<$Res> {
  factory _$$PropertyStatePayloadImplCopyWith(_$PropertyStatePayloadImpl value,
          $Res Function(_$PropertyStatePayloadImpl) then) =
      __$$PropertyStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      bool isLoading,
      List<PropertyModel> properties,
      PropertyModel? selectedProperty});

  @override
  $PropertyModelCopyWith<$Res>? get selectedProperty;
}

/// @nodoc
class __$$PropertyStatePayloadImplCopyWithImpl<$Res>
    extends _$PropertyStatePayloadCopyWithImpl<$Res, _$PropertyStatePayloadImpl>
    implements _$$PropertyStatePayloadImplCopyWith<$Res> {
  __$$PropertyStatePayloadImplCopyWithImpl(_$PropertyStatePayloadImpl _value,
      $Res Function(_$PropertyStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? properties = null,
    Object? selectedProperty = freezed,
  }) {
    return _then(_$PropertyStatePayloadImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertyModel>,
      selectedProperty: freezed == selectedProperty
          ? _value.selectedProperty
          : selectedProperty // ignore: cast_nullable_to_non_nullable
              as PropertyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyStatePayloadImpl implements _PropertyStatePayload {
  const _$PropertyStatePayloadImpl(
      {required this.error,
      required this.isLoading,
      required final List<PropertyModel> properties,
      this.selectedProperty})
      : _properties = properties;

  factory _$PropertyStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyStatePayloadImplFromJson(json);

  @override
  final String error;
  @override
  final bool isLoading;
  final List<PropertyModel> _properties;
  @override
  List<PropertyModel> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  final PropertyModel? selectedProperty;

  @override
  String toString() {
    return 'PropertyStatePayload(error: $error, isLoading: $isLoading, properties: $properties, selectedProperty: $selectedProperty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.selectedProperty, selectedProperty) ||
                other.selectedProperty == selectedProperty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading,
      const DeepCollectionEquality().hash(_properties), selectedProperty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyStatePayloadImplCopyWith<_$PropertyStatePayloadImpl>
      get copyWith =>
          __$$PropertyStatePayloadImplCopyWithImpl<_$PropertyStatePayloadImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _PropertyStatePayload implements PropertyStatePayload {
  const factory _PropertyStatePayload(
      {required final String error,
      required final bool isLoading,
      required final List<PropertyModel> properties,
      final PropertyModel? selectedProperty}) = _$PropertyStatePayloadImpl;

  factory _PropertyStatePayload.fromJson(Map<String, dynamic> json) =
      _$PropertyStatePayloadImpl.fromJson;

  @override
  String get error;
  @override
  bool get isLoading;
  @override
  List<PropertyModel> get properties;
  @override
  PropertyModel? get selectedProperty;
  @override
  @JsonKey(ignore: true)
  _$$PropertyStatePayloadImplCopyWith<_$PropertyStatePayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
