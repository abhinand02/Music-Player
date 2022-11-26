part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<Songs> songlist,
    required bool playerVisibility,
  }) = _Initial;

  factory HomeScreenState.initial(){
    return  HomeScreenState(songlist: SongBox.getInstance().values.toList(), playerVisibility: false);
  }
}
