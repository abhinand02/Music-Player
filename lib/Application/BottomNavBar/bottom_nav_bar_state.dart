part of 'bottom_nav_bar_bloc.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    required int pageIndex,
  }) = _Initial;

  factory BottomNavBarState.initial(){
    return const BottomNavBarState(pageIndex: 0);
  }
}
