// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<V, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(V value) ok,
    required TResult Function(E error) err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(V value)? ok,
    TResult? Function(E error)? err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(V value)? ok,
    TResult Function(E error)? err,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<V, E> value) ok,
    required TResult Function(Err<V, E> value) err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<V, E> value)? ok,
    TResult? Function(Err<V, E> value)? err,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<V, E> value)? ok,
    TResult Function(Err<V, E> value)? err,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<V, E, $Res> {
  factory $ResultCopyWith(
          Result<V, E> value, $Res Function(Result<V, E>) then) =
      _$ResultCopyWithImpl<V, E, $Res, Result<V, E>>;
}

/// @nodoc
class _$ResultCopyWithImpl<V, E, $Res, $Val extends Result<V, E>>
    implements $ResultCopyWith<V, E, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OkImplCopyWith<V, E, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<V, E> value, $Res Function(_$OkImpl<V, E>) then) =
      __$$OkImplCopyWithImpl<V, E, $Res>;
  @useResult
  $Res call({V value});
}

/// @nodoc
class __$$OkImplCopyWithImpl<V, E, $Res>
    extends _$ResultCopyWithImpl<V, E, $Res, _$OkImpl<V, E>>
    implements _$$OkImplCopyWith<V, E, $Res> {
  __$$OkImplCopyWithImpl(
      _$OkImpl<V, E> _value, $Res Function(_$OkImpl<V, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$OkImpl<V, E>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as V,
    ));
  }
}

/// @nodoc

class _$OkImpl<V, E> implements Ok<V, E> {
  _$OkImpl(this.value);

  @override
  final V value;

  @override
  String toString() {
    return 'Result<$V, $E>.ok(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<V, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<V, E, _$OkImpl<V, E>> get copyWith =>
      __$$OkImplCopyWithImpl<V, E, _$OkImpl<V, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(V value) ok,
    required TResult Function(E error) err,
  }) {
    return ok(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(V value)? ok,
    TResult? Function(E error)? err,
  }) {
    return ok?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(V value)? ok,
    TResult Function(E error)? err,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<V, E> value) ok,
    required TResult Function(Err<V, E> value) err,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<V, E> value)? ok,
    TResult? Function(Err<V, E> value)? err,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<V, E> value)? ok,
    TResult Function(Err<V, E> value)? err,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<V, E> implements Result<V, E> {
  factory Ok(final V value) = _$OkImpl<V, E>;

  V get value;
  @JsonKey(ignore: true)
  _$$OkImplCopyWith<V, E, _$OkImpl<V, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrImplCopyWith<V, E, $Res> {
  factory _$$ErrImplCopyWith(
          _$ErrImpl<V, E> value, $Res Function(_$ErrImpl<V, E>) then) =
      __$$ErrImplCopyWithImpl<V, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$ErrImplCopyWithImpl<V, E, $Res>
    extends _$ResultCopyWithImpl<V, E, $Res, _$ErrImpl<V, E>>
    implements _$$ErrImplCopyWith<V, E, $Res> {
  __$$ErrImplCopyWithImpl(
      _$ErrImpl<V, E> _value, $Res Function(_$ErrImpl<V, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrImpl<V, E>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$ErrImpl<V, E> implements Err<V, E> {
  _$ErrImpl(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'Result<$V, $E>.err(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrImpl<V, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrImplCopyWith<V, E, _$ErrImpl<V, E>> get copyWith =>
      __$$ErrImplCopyWithImpl<V, E, _$ErrImpl<V, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(V value) ok,
    required TResult Function(E error) err,
  }) {
    return err(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(V value)? ok,
    TResult? Function(E error)? err,
  }) {
    return err?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(V value)? ok,
    TResult Function(E error)? err,
    required TResult orElse(),
  }) {
    if (err != null) {
      return err(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<V, E> value) ok,
    required TResult Function(Err<V, E> value) err,
  }) {
    return err(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Ok<V, E> value)? ok,
    TResult? Function(Err<V, E> value)? err,
  }) {
    return err?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<V, E> value)? ok,
    TResult Function(Err<V, E> value)? err,
    required TResult orElse(),
  }) {
    if (err != null) {
      return err(this);
    }
    return orElse();
  }
}

abstract class Err<V, E> implements Result<V, E> {
  factory Err(final E error) = _$ErrImpl<V, E>;

  E get error;
  @JsonKey(ignore: true)
  _$$ErrImplCopyWith<V, E, _$ErrImpl<V, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
