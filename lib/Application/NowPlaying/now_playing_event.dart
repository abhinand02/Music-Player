part of 'now_playing_bloc.dart';

@freezed
class NowPlayingEvent with _$NowPlayingEvent {
  const factory NowPlayingEvent.shuffle() = Shuffle;
  const factory NowPlayingEvent.repeat() = Repeat;
  
}