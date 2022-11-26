part of 'now_playing_bloc.dart';

@freezed
class NowPlayingState with _$NowPlayingState {
  const factory NowPlayingState({
    required Color repeat,
    required Color shuffle,
  }) = _Initial;

  factory NowPlayingState.initial(){
    return  NowPlayingState(repeat: greyclr, shuffle: greyclr);
  }
}
