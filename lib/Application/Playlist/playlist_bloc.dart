import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../Model/db_functions.dart';
import '../../../Model/playlistmodel.dart';

part 'playlist_event.dart';
part 'playlist_state.dart';
part 'playlist_bloc.freezed.dart';

class PlaylistBloc extends Bloc<PlaylistEvent, PlaylistState> {
  PlaylistBloc() : super(PlaylistState.initial()) {
    on<PlaylistEvent>((event, emit) {
      emit(PlaylistState(playlists: playlistbox.values.toList()));
    });
  }
}
