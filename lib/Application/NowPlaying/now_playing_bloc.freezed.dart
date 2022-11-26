// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'now_playing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NowPlayingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shuffle,
    required TResult Function() repeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shuffle,
    TResult? Function()? repeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shuffle,
    TResult Function()? repeat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Shuffle value) shuffle,
    required TResult Function(Repeat value) repeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Shuffle value)? shuffle,
    TResult? Function(Repeat value)? repeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Shuffle value)? shuffle,
    TResult Function(Repeat value)? repeat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingEventCopyWith<$Res> {
  factory $NowPlayingEventCopyWith(
          NowPlayingEvent value, $Res Function(NowPlayingEvent) then) =
      _$NowPlayingEventCopyWithImpl<$Res, NowPlayingEvent>;
}

/// @nodoc
class _$NowPlayingEventCopyWithImpl<$Res, $Val extends NowPlayingEvent>
    implements $NowPlayingEventCopyWith<$Res> {
  _$NowPlayingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShuffleCopyWith<$Res> {
  factory _$$ShuffleCopyWith(_$Shuffle value, $Res Function(_$Shuffle) then) =
      __$$ShuffleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShuffleCopyWithImpl<$Res>
    extends _$NowPlayingEventCopyWithImpl<$Res, _$Shuffle>
    implements _$$ShuffleCopyWith<$Res> {
  __$$ShuffleCopyWithImpl(_$Shuffle _value, $Res Function(_$Shuffle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Shuffle implements Shuffle {
  const _$Shuffle();

  @override
  String toString() {
    return 'NowPlayingEvent.shuffle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Shuffle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shuffle,
    required TResult Function() repeat,
  }) {
    return shuffle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shuffle,
    TResult? Function()? repeat,
  }) {
    return shuffle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shuffle,
    TResult Function()? repeat,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Shuffle value) shuffle,
    required TResult Function(Repeat value) repeat,
  }) {
    return shuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Shuffle value)? shuffle,
    TResult? Function(Repeat value)? repeat,
  }) {
    return shuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Shuffle value)? shuffle,
    TResult Function(Repeat value)? repeat,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle(this);
    }
    return orElse();
  }
}

abstract class Shuffle implements NowPlayingEvent {
  const factory Shuffle() = _$Shuffle;
}

/// @nodoc
abstract class _$$RepeatCopyWith<$Res> {
  factory _$$RepeatCopyWith(_$Repeat value, $Res Function(_$Repeat) then) =
      __$$RepeatCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatCopyWithImpl<$Res>
    extends _$NowPlayingEventCopyWithImpl<$Res, _$Repeat>
    implements _$$RepeatCopyWith<$Res> {
  __$$RepeatCopyWithImpl(_$Repeat _value, $Res Function(_$Repeat) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Repeat implements Repeat {
  const _$Repeat();

  @override
  String toString() {
    return 'NowPlayingEvent.repeat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Repeat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() shuffle,
    required TResult Function() repeat,
  }) {
    return repeat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? shuffle,
    TResult? Function()? repeat,
  }) {
    return repeat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? shuffle,
    TResult Function()? repeat,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Shuffle value) shuffle,
    required TResult Function(Repeat value) repeat,
  }) {
    return repeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Shuffle value)? shuffle,
    TResult? Function(Repeat value)? repeat,
  }) {
    return repeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Shuffle value)? shuffle,
    TResult Function(Repeat value)? repeat,
    required TResult orElse(),
  }) {
    if (repeat != null) {
      return repeat(this);
    }
    return orElse();
  }
}

abstract class Repeat implements NowPlayingEvent {
  const factory Repeat() = _$Repeat;
}

/// @nodoc
mixin _$NowPlayingState {
  Color get repeat => throw _privateConstructorUsedError;
  Color get shuffle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NowPlayingStateCopyWith<NowPlayingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingStateCopyWith<$Res> {
  factory $NowPlayingStateCopyWith(
          NowPlayingState value, $Res Function(NowPlayingState) then) =
      _$NowPlayingStateCopyWithImpl<$Res, NowPlayingState>;
  @useResult
  $Res call({Color repeat, Color shuffle});
}

/// @nodoc
class _$NowPlayingStateCopyWithImpl<$Res, $Val extends NowPlayingState>
    implements $NowPlayingStateCopyWith<$Res> {
  _$NowPlayingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
    Object? shuffle = null,
  }) {
    return _then(_value.copyWith(
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Color,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $NowPlayingStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color repeat, Color shuffle});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NowPlayingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
    Object? shuffle = null,
  }) {
    return _then(_$_Initial(
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Color,
      shuffle: null == shuffle
          ? _value.shuffle
          : shuffle // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.repeat, required this.shuffle});

  @override
  final Color repeat;
  @override
  final Color shuffle;

  @override
  String toString() {
    return 'NowPlayingState(repeat: $repeat, shuffle: $shuffle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.shuffle, shuffle) || other.shuffle == shuffle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repeat, shuffle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements NowPlayingState {
  const factory _Initial(
      {required final Color repeat, required final Color shuffle}) = _$_Initial;

  @override
  Color get repeat;
  @override
  Color get shuffle;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
