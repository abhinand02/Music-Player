import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Model/model.dart';
import 'package:music_player/constants/style.dart';
import 'package:music_player/NowPlaying%20Screen/nowplaying.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../Model/db_functions.dart';
import '../Model/mostplayed_model.dart';
import '../Model/recentsong_model.dart';
import '../Splash Screen/splashscreen.dart';

class Search extends SearchDelegate {
@override
  ThemeData appBarTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: backGroundColor,
    primaryColor: whiteClr,
    appBarTheme: AppBarTheme(backgroundColor: backGroundColor),
    textTheme: Theme.of(context).textTheme.apply(bodyColor: whiteClr),
    primaryIconTheme: IconThemeData(
      color: whiteClr,
    ),
    inputDecorationTheme: InputDecorationTheme(labelStyle:textWhite18,hintStyle: TextStyle(color: whiteClr,),border: InputBorder.none
    ),
  );
}
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_rounded));

  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        icon:  Icon(Icons.close_rounded,color: blackClr,),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        });
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Songs> songs = SongBox.getInstance().values.toList();

    final searchitem = query.isEmpty
        ? songs
        : songs
            .where((element) => element.songname
                .toLowerCase()
                .contains(query.toLowerCase().toString()))
            .toList();
    return searchResults(searchitem);
  }
}

Widget searchResults(List<Songs> song) {
  final dbsongs = SongBox.getInstance().values.toList();
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  List<Audio> audio = [];
  for (var item in song) {
    audio.add(
      Audio.file(
        item.songurl,
        metas: Metas(
            title: item.songname, artist: item.artist, id: item.id.toString()),
      ),
    );
  }
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      if (song.isEmpty) {
        return Scaffold(
          body: Center(
            child: Text(
              'No Search Result ????!',
              style: textWhite18,
            ),
          ),
        );
      } else {
        return ListTile(
          onTap: () async {
            FocusScopeNode currentFocus = FocusScope.of(context);
              currentFocus.unfocus();
            final rsongs = RecentPlayed(
                songname: song[index].songname,
                artist: song[index].artist,
                duration: song[index].duration,
                songurl: song[index].songurl,
                id: song[index].id);
            updateRecentlyPlayed(rsongs);
            int songIndex = dbsongs.indexWhere(
                (element) => element.songname == song[index].songname);
            MostPlayed msongs = mostplayedsongs.values.toList()[songIndex];
            updatePlayedSongCount(msongs, index);

          await  audioPlayer.open(
              Playlist(audios: audio, startIndex: index),
              showNotification: notificationSwitch,
              loopMode: LoopMode.playlist,
            );
            // ignore: use_build_context_synchronously
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => NowPlayingScreen(),
              ),
            );
          },
          leading: QueryArtworkWidget(
            artworkBorder: BorderRadius.circular(15),
            artworkHeight: 90,
            artworkWidth: 60,
            id: song[index].id,
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
            song[index].songname,
            style: textWhite18,
            overflow: TextOverflow.ellipsis,
          ),
          contentPadding: const EdgeInsets.all(10),
        );
      }
    },
    itemCount: song.length,
  );
}
