// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) Initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? Initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentScreenEventCopyWith<$Res> {
  factory $RecentScreenEventCopyWith(
          RecentScreenEvent value, $Res Function(RecentScreenEvent) then) =
      _$RecentScreenEventCopyWithImpl<$Res, RecentScreenEvent>;
}

/// @nodoc
class _$RecentScreenEventCopyWithImpl<$Res, $Val extends RecentScreenEvent>
    implements $RecentScreenEventCopyWith<$Res> {
  _$RecentScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RecentScreenEventCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'RecentScreenEvent.Initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initial,
  }) {
    return Initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initial,
  }) {
    return Initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initial,
    required TResult orElse(),
  }) {
    if (Initial != null) {
      return Initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) Initial,
  }) {
    return Initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? Initial,
  }) {
    return Initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? Initial,
    required TResult orElse(),
  }) {
    if (Initial != null) {
      return Initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RecentScreenEvent {
  const factory Initial() = _$Initial;
}

/// @nodoc
mixin _$RecentScreenState {
  List<RecentPlayed> get recentSongsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentScreenStateCopyWith<RecentScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentScreenStateCopyWith<$Res> {
  factory $RecentScreenStateCopyWith(
          RecentScreenState value, $Res Function(RecentScreenState) then) =
      _$RecentScreenStateCopyWithImpl<$Res, RecentScreenState>;
  @useResult
  $Res call({List<RecentPlayed> recentSongsList});
}

/// @nodoc
class _$RecentScreenStateCopyWithImpl<$Res, $Val extends RecentScreenState>
    implements $RecentScreenStateCopyWith<$Res> {
  _$RecentScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSongsList = null,
  }) {
    return _then(_value.copyWith(
      recentSongsList: null == recentSongsList
          ? _value.recentSongsList
          : recentSongsList // ignore: cast_nullable_to_non_nullable
              as List<RecentPlayed>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $RecentScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecentPlayed> recentSongsList});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RecentScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSongsList = null,
  }) {
    return _then(_$_Initial(
      recentSongsList: null == recentSongsList
          ? _value._recentSongsList
          : recentSongsList // ignore: cast_nullable_to_non_nullable
              as List<RecentPlayed>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required final List<RecentPlayed> recentSongsList})
      : _recentSongsList = recentSongsList;

  final List<RecentPlayed> _recentSongsList;
  @override
  List<RecentPlayed> get recentSongsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSongsList);
  }

  @override
  String toString() {
    return 'RecentScreenState(recentSongsList: $recentSongsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._recentSongsList, _recentSongsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentSongsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements RecentScreenState {
  const factory _Initial({required final List<RecentPlayed> recentSongsList}) =
      _$_Initial;

  @override
  List<RecentPlayed> get recentSongsList;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
