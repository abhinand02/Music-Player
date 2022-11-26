import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/constants/style.dart';


part 'now_playing_event.dart';
part 'now_playing_state.dart';
part 'now_playing_bloc.freezed.dart';

class NowPlayingBloc extends Bloc<NowPlayingEvent, NowPlayingState> {
  NowPlayingBloc() : super(NowPlayingState.initial()) {
    on<Shuffle>((event, emit) {
      emit(state.copyWith(shuffle: state.shuffle == greyclr ?  selectedItemColor : greyclr ));
    });

    on<Repeat>((event, emit) {
      emit(state.copyWith(repeat: state.repeat == greyclr ?  selectedItemColor : greyclr));
    });
  }
}
