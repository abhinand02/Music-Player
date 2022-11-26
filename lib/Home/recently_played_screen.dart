import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:music_player/Application/RecentScreen/recent_screen_bloc.dart';
import 'package:music_player/Model/model.dart';
import 'package:music_player/Model/mostplayed_model.dart';
import 'package:music_player/Model/recentsong_model.dart';
import 'package:music_player/NowPlaying%20Screen/nowplaying.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../Model/db_functions.dart';
import '../constants/style.dart';
import '../Splash Screen/splashscreen.dart';
import '../widgets/method.dart';
import '../widgets/mini_player.dart';
import 'home_screen.dart';

class RecentlyPlayedScreen extends StatelessWidget {
  RecentlyPlayedScreen({super.key});

  final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer.withId('0');

  List<Songs> dbSongs = SongBox.getInstance().values.toList();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RecentScreenBloc>(context).add(const Initial());
    });
    return Scaffold(
      body: BlocBuilder<RecentScreenBloc, RecentScreenState>(
        builder: (context, state) {
          return ValueListenableBuilder<Box<RecentPlayed>>(
            valueListenable: recentlyplayedbox.listenable(),
            builder: (context, Box<RecentPlayed> recentsongs, _) {
              convertToAudio();
              List<RecentPlayed> rsongs =
                  state.recentSongsList.reversed.toList();
              if (rsongs.isEmpty) {
                return Center(
                  child: Text(
                    'No Recently played',
                    style: textWhite18,
                  ),
                );
              }
              return ListView.builder(
                padding:
                    EdgeInsets.only(top: 10, bottom: playerVisibility ? 70 : 0),
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (context, index) {
                  List<MostPlayed> allmostplayedsongs =
                      mostplayedsongs.values.toList();
                  MostPlayed msongs = allmostplayedsongs[index];
                  return state.recentSongsList.isEmpty
                      ? Center(
                          child: Text(
                            'No Recent Played !',
                            style: textWhite18,
                          ),
                        )
                      : ListTile(
                          onTap: () async {
                            BlocProvider.of<RecentScreenBloc>(context)
                                .add(const Initial());
                            final rsong = RecentPlayed(
                                songname: rsongs[index].songname,
                                artist: rsongs[index].artist,
                                duration: rsongs[index].duration,
                                songurl: rsongs[index].songurl,
                                id: rsongs[index].id);
                            updateRecentlyPlayed(rsong);
                            //  updatePlayedSongCount(msongs, index);
                            _audioPlayer.open(
                              Playlist(audios: resongs, startIndex: index),
                              showNotification: notificationSwitch,
                              loopMode: LoopMode.none,
                            );

                            // setState(() {
                            // playerVisibility = true;
                            isPlaying = true;
                            // });
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => NowPlayingScreen(),
                              ),
                            );
                          },
                          leading: QueryArtworkWidget(
                            artworkBorder: BorderRadius.circular(15),
                            artworkHeight: 90,
                            artworkWidth: 60,
                            id: rsongs[index].id!,
                            type: ArtworkType.AUDIO,
                            artworkFit: BoxFit.cover,
                            nullArtworkWidget: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/music.png',
                                width: 60,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(
                            rsongs[index].songname!,
                            style: textWhite18,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            rsongs[index].artist!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: unSelectedItemClr),
                          ),
                          // trailing: favPlayListIcons(),
                        );
                },
                itemCount: rsongs.length > 5 ? 5 : rsongs.length,
              );
            },
          );
        },
      ),
    );
  }
}
