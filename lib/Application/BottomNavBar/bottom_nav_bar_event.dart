part of 'bottom_nav_bar_bloc.dart';

@freezed
class BottomNavBarEvent with _$BottomNavBarEvent {
  const factory BottomNavBarEvent.pageIndex({
    required int newIndex,
  }) = PageIndex;
}