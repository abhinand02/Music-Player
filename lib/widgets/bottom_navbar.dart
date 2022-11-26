import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/Favourite/favourite.dart';
import 'package:music_player/Home/home_screen.dart';
import 'package:music_player/Playlist/playlist.dart';
import 'package:music_player/settings/settings.dart';
import '../Application/BottomNavBar/bottom_nav_bar_bloc.dart';
import '../constants/style.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  int currentIndex = 0;
  final _pages = [
    HomeScreen(),
    FavoriteScreen(),
    PlaylistScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: _pages[state.pageIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.pageIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backGroundColor,
            selectedItemColor: selectedItemColor,
            unselectedItemColor: unSelectedItemClr,
            selectedFontSize: 14,
            unselectedFontSize: 13,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_rounded), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.queue_music_sharp), label: 'Playlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ],
            onTap: (value) {
              BlocProvider.of<BottomNavBarBloc>(context).add(PageIndex(newIndex: value));
              // setState(
              //   () {
              //     currentIndex = value;
              //   },
              // );
            },
          ),
        );
      },
    );
  }
}
