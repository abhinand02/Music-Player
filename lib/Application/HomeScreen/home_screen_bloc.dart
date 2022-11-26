import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/Model/model.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    on<Initial>((event, emit) {
    
      emit(HomeScreenState(songlist: state.songlist,playerVisibility: false));
   
    });

    on<MiniPlayerVisibility>((event, emit) {
        emit(HomeScreenState(songlist: state.songlist, playerVisibility: true));
    } );
  }
}
