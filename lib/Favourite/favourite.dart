import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:music_player/Model/db_functions.dart';
import 'package:music_player/Model/model.dart';
import 'package:music_player/constants/style.dart';
import 'package:music_player/NowPlaying%20Screen/nowplaying.dart';
import 'package:music_player/widgets/method.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../Application/FavScreen/fav_screen_bloc.dart';
import '../Home/home_screen.dart';
import '../Model/favmodel.dart';
import '../Model/mostplayed_model.dart';
import '../Model/recentsong_model.dart';
import '../Splash Screen/splashscreen.dart';
import '../widgets/mini_player.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  List<Audio> allsongs = [];

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  final dbsongs = SongBox.getInstance().values.toList();

  void initState() {
    final dbFavsongs = Hive.box<FavSongs>('favsongs').values.toList();

    for (var item in dbFavsongs) {
      allsongs.add(
        Audio.file(
          item.songurl,
          metas: Metas(
            artist: item.artist,
            title: item.songname,
            id: item.id.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FavScreenBloc>(context).add(const Initial());
    });
    return Scaffold(
      appBar: appBar('Favourites'),
      body: BlocBuilder<FavScreenBloc, FavScreenState>(
        builder: (context, state) {
          List<FavSongs> allfavsongs = state.favsonglist;

          if (favdbsongs.isEmpty) {
            return Center(
              child: Text(
                'No Songs Added',
                style: textWhite18,
              ),
            );
          }
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                onTap: () {
                  final rsongs = RecentPlayed(
                      songname: allfavsongs[index].songname,
                      artist: allfavsongs[index].artist,
                      duration: allfavsongs[index].duration,
                      songurl: allfavsongs[index].songurl,
                      id: allfavsongs[index].id);
                  updateRecentlyPlayed(rsongs);
                  int songIndex = dbsongs.indexWhere((element) =>
                      element.songname == allfavsongs[index].songname);
                  MostPlayed msongs =
                      mostplayedsongs.values.toList()[songIndex];
                  updatePlayedSongCount(msongs, index);

                 
                  playerVisibility = true;
                  isPlaying = true;

                  audioPlayer.open(
                    Playlist(audios: allsongs, startIndex: index),
                    showNotification: notificationSwitch,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NowPlayingScreen();
                      },
                    ),
                  );
                },
                leading: QueryArtworkWidget(
                  artworkBorder: BorderRadius.circular(15),
                  artworkHeight: 90,
                  artworkWidth: 60,
                  id: allfavsongs[index].id,
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
                  allfavsongs[index].songname,
                  style: textWhite18,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.favorite_rounded),
                  onPressed: () {
                    BlocProvider.of<FavScreenBloc>(context)
                        .add(const Initial());

                    favdbsongs.deleteAt(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: selectedItemColor,
                        duration: const Duration(seconds: 1),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        content: Text(
                            '${allfavsongs[index].songname} Removed from favourites'),
                      ),
                    );
                  },
                  color: selectedItemColor,
                ),
              );
            },
            itemCount: allfavsongs.length,
          );
        },
      ),
    );
  }
}
