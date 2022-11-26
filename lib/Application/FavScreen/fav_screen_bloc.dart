import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/Model/db_functions.dart';

import '../../Model/favmodel.dart';

part 'fav_screen_event.dart';
part 'fav_screen_state.dart';
part 'fav_screen_bloc.freezed.dart';

class FavScreenBloc extends Bloc<FavScreenEvent, FavScreenState> {
  FavScreenBloc() : super(FavScreenState.initial()) {
    on<Initial>((event, emit) {
      
        emit(FavScreenState(favsonglist: favdbsongs.values.toList()));

      
    });
  }
}
