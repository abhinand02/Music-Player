part of 'fav_screen_bloc.dart';

@freezed
class FavScreenState with _$FavScreenState {
  const factory FavScreenState({
    required List<FavSongs> favsonglist,
  }) = _Initial;

  factory FavScreenState.initial(){
    return   FavScreenState(favsonglist: favdbsongs.values.toList());
  }
}
