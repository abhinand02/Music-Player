part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.Initial() = Initial;
  const factory HomeScreenEvent.MiniPlayerVisibility() = MiniPlayerVisibility;
  
}