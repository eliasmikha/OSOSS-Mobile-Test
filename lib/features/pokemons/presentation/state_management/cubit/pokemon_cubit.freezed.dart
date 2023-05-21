// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(void Function()? callback) error,
    required TResult Function(PokemonListModel data) pokemonListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(void Function()? callback)? error,
    TResult? Function(PokemonListModel data)? pokemonListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(void Function()? callback)? error,
    TResult Function(PokemonListModel data)? pokemonListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonListLoadedState value) pokemonListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonInitState value)? init,
    TResult? Function(PokemonLoadingState value)? loading,
    TResult? Function(PokemonErrorState value)? error,
    TResult? Function(PokemonListLoadedState value)? pokemonListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonListLoadedState value)? pokemonListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res, PokemonState>;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res, $Val extends PokemonState>
    implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PokemonInitStateCopyWith<$Res> {
  factory _$$PokemonInitStateCopyWith(
          _$PokemonInitState value, $Res Function(_$PokemonInitState) then) =
      __$$PokemonInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokemonInitStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonInitState>
    implements _$$PokemonInitStateCopyWith<$Res> {
  __$$PokemonInitStateCopyWithImpl(
      _$PokemonInitState _value, $Res Function(_$PokemonInitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PokemonInitState implements PokemonInitState {
  const _$PokemonInitState();

  @override
  String toString() {
    return 'PokemonState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PokemonInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(void Function()? callback) error,
    required TResult Function(PokemonListModel data) pokemonListLoaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(void Function()? callback)? error,
    TResult? Function(PokemonListModel data)? pokemonListLoaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(void Function()? callback)? error,
    TResult Function(PokemonListModel data)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonListLoadedState value) pokemonListLoaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonInitState value)? init,
    TResult? Function(PokemonLoadingState value)? loading,
    TResult? Function(PokemonErrorState value)? error,
    TResult? Function(PokemonListLoadedState value)? pokemonListLoaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonListLoadedState value)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PokemonInitState implements PokemonState {
  const factory PokemonInitState() = _$PokemonInitState;
}

/// @nodoc
abstract class _$$PokemonLoadingStateCopyWith<$Res> {
  factory _$$PokemonLoadingStateCopyWith(_$PokemonLoadingState value,
          $Res Function(_$PokemonLoadingState) then) =
      __$$PokemonLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokemonLoadingStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonLoadingState>
    implements _$$PokemonLoadingStateCopyWith<$Res> {
  __$$PokemonLoadingStateCopyWithImpl(
      _$PokemonLoadingState _value, $Res Function(_$PokemonLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PokemonLoadingState implements PokemonLoadingState {
  const _$PokemonLoadingState();

  @override
  String toString() {
    return 'PokemonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PokemonLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(void Function()? callback) error,
    required TResult Function(PokemonListModel data) pokemonListLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(void Function()? callback)? error,
    TResult? Function(PokemonListModel data)? pokemonListLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(void Function()? callback)? error,
    TResult Function(PokemonListModel data)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonListLoadedState value) pokemonListLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonInitState value)? init,
    TResult? Function(PokemonLoadingState value)? loading,
    TResult? Function(PokemonErrorState value)? error,
    TResult? Function(PokemonListLoadedState value)? pokemonListLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonListLoadedState value)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokemonLoadingState implements PokemonState {
  const factory PokemonLoadingState() = _$PokemonLoadingState;
}

/// @nodoc
abstract class _$$PokemonErrorStateCopyWith<$Res> {
  factory _$$PokemonErrorStateCopyWith(
          _$PokemonErrorState value, $Res Function(_$PokemonErrorState) then) =
      __$$PokemonErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function()? callback});
}

/// @nodoc
class __$$PokemonErrorStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonErrorState>
    implements _$$PokemonErrorStateCopyWith<$Res> {
  __$$PokemonErrorStateCopyWithImpl(
      _$PokemonErrorState _value, $Res Function(_$PokemonErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = freezed,
  }) {
    return _then(_$PokemonErrorState(
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$PokemonErrorState implements PokemonErrorState {
  const _$PokemonErrorState({this.callback});

  @override
  final void Function()? callback;

  @override
  String toString() {
    return 'PokemonState.error(callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonErrorState &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonErrorStateCopyWith<_$PokemonErrorState> get copyWith =>
      __$$PokemonErrorStateCopyWithImpl<_$PokemonErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(void Function()? callback) error,
    required TResult Function(PokemonListModel data) pokemonListLoaded,
  }) {
    return error(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(void Function()? callback)? error,
    TResult? Function(PokemonListModel data)? pokemonListLoaded,
  }) {
    return error?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(void Function()? callback)? error,
    TResult Function(PokemonListModel data)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonListLoadedState value) pokemonListLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonInitState value)? init,
    TResult? Function(PokemonLoadingState value)? loading,
    TResult? Function(PokemonErrorState value)? error,
    TResult? Function(PokemonListLoadedState value)? pokemonListLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonListLoadedState value)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PokemonErrorState implements PokemonState {
  const factory PokemonErrorState({final void Function()? callback}) =
      _$PokemonErrorState;

  void Function()? get callback;
  @JsonKey(ignore: true)
  _$$PokemonErrorStateCopyWith<_$PokemonErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PokemonListLoadedStateCopyWith<$Res> {
  factory _$$PokemonListLoadedStateCopyWith(_$PokemonListLoadedState value,
          $Res Function(_$PokemonListLoadedState) then) =
      __$$PokemonListLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PokemonListModel data});
}

/// @nodoc
class __$$PokemonListLoadedStateCopyWithImpl<$Res>
    extends _$PokemonStateCopyWithImpl<$Res, _$PokemonListLoadedState>
    implements _$$PokemonListLoadedStateCopyWith<$Res> {
  __$$PokemonListLoadedStateCopyWithImpl(_$PokemonListLoadedState _value,
      $Res Function(_$PokemonListLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PokemonListLoadedState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PokemonListModel,
    ));
  }
}

/// @nodoc

class _$PokemonListLoadedState implements PokemonListLoadedState {
  const _$PokemonListLoadedState({required this.data});

  @override
  final PokemonListModel data;

  @override
  String toString() {
    return 'PokemonState.pokemonListLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListLoadedState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListLoadedStateCopyWith<_$PokemonListLoadedState> get copyWith =>
      __$$PokemonListLoadedStateCopyWithImpl<_$PokemonListLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(void Function()? callback) error,
    required TResult Function(PokemonListModel data) pokemonListLoaded,
  }) {
    return pokemonListLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(void Function()? callback)? error,
    TResult? Function(PokemonListModel data)? pokemonListLoaded,
  }) {
    return pokemonListLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(void Function()? callback)? error,
    TResult Function(PokemonListModel data)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (pokemonListLoaded != null) {
      return pokemonListLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonInitState value) init,
    required TResult Function(PokemonLoadingState value) loading,
    required TResult Function(PokemonErrorState value) error,
    required TResult Function(PokemonListLoadedState value) pokemonListLoaded,
  }) {
    return pokemonListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonInitState value)? init,
    TResult? Function(PokemonLoadingState value)? loading,
    TResult? Function(PokemonErrorState value)? error,
    TResult? Function(PokemonListLoadedState value)? pokemonListLoaded,
  }) {
    return pokemonListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonInitState value)? init,
    TResult Function(PokemonLoadingState value)? loading,
    TResult Function(PokemonErrorState value)? error,
    TResult Function(PokemonListLoadedState value)? pokemonListLoaded,
    required TResult orElse(),
  }) {
    if (pokemonListLoaded != null) {
      return pokemonListLoaded(this);
    }
    return orElse();
  }
}

abstract class PokemonListLoadedState implements PokemonState {
  const factory PokemonListLoadedState({required final PokemonListModel data}) =
      _$PokemonListLoadedState;

  PokemonListModel get data;
  @JsonKey(ignore: true)
  _$$PokemonListLoadedStateCopyWith<_$PokemonListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
