part of 'recent_screen_bloc.dart';

@freezed
class RecentScreenState with _$RecentScreenState {
  const factory RecentScreenState({
    required List<RecentPlayed> recentSongsList,
  }) = _Initial;

  factory RecentScreenState.initial(){
    return RecentScreenState(recentSongsList: recentlyplayedbox.values.toList());
  }
}
