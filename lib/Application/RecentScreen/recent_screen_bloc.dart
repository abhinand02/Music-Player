import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/Model/db_functions.dart';

import '../../Model/recentsong_model.dart';

part 'recent_screen_event.dart';
part 'recent_screen_state.dart';
part 'recent_screen_bloc.freezed.dart';

class RecentScreenBloc extends Bloc<RecentScreenEvent, RecentScreenState> {
  RecentScreenBloc() : super(RecentScreenState.initial()) {
    on<Initial>((event, emit) {
        emit(RecentScreenState(recentSongsList: recentlyplayedbox.values.toList()));
    });
  }
}
