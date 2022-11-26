part of 'playlist_bloc.dart';

@freezed
class PlaylistState with _$PlaylistState {
  const factory PlaylistState({
    required List<PlaylistSongs> playlists,
      // required List<Songs> playlistsong,
  }) = _Initial;

  factory PlaylistState.initial(){
    List<PlaylistSongs> playlistsong = playlistbox.values.toList();
    return PlaylistState(playlists: playlistbox.values.toList(),);
  }
}
