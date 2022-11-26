import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/Favourite/favourite_function.dart';
import 'package:music_player/constants/style.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../Application/NowPlaying/now_playing_bloc.dart';
import '../Model/model.dart';

bool isRepeat = false;
bool isShuffle = false;

class NowPlayingScreen extends StatelessWidget {
  NowPlayingScreen({
    super.key,
  });
  final AssetsAudioPlayer player = AssetsAudioPlayer.withId('0');
  @override
  Widget build(BuildContext context) {
    List<Songs> dbSongs = SongBox.getInstance().values.toList();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBar(height, context, dbSongs), //appbar
      body: Column(
        children: [
          SongDetails(width: width), //Thumbnail,total time, elapsed time
          player.builderCurrent(
            builder: (context, playing) {
              return favPlalist(
                playing,
                dbSongs,
              );
            },
          ),
        ],
      ),
    );
  }

  Expanded favPlalist(
    Playing playing,
    List<Songs> dbSongs,
  ) {
    return Expanded(
      child: Builder(
        builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<NowPlayingBloc, NowPlayingState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(
                      Icons.shuffle_rounded,
                      color: state.shuffle,
                    ),
                    iconSize: 30,
                    color: greyclr,
                    onPressed: () {
                      // setState(() {
                      BlocProvider.of<NowPlayingBloc>(context)
                          .add(const Shuffle());
                      if (isShuffle == true) {
                        isShuffle = false;
                        player.toggleShuffle();
                      } else {
                        isShuffle = true;
                        player.toggleShuffle();
                      }
                      // });
                    },
                    padding: EdgeInsets.zero,
                    splashRadius: 30,
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.skip_previous_sharp),
                iconSize: 40,
                color: greyclr,
                onPressed: () {
                  player.previous();
                },
                padding: EdgeInsets.zero,
                splashRadius: 30,
              ),
              PlayerBuilder.isPlaying(
                  player: player,
                  builder: (context, isPlaying) {
                    return IconButton(
                      icon: Icon(isPlaying
                          ? Icons.pause_circle_filled_rounded
                          : Icons.play_circle_filled_outlined),
                      color: selectedItemColor,
                      iconSize: 80,
                      onPressed: () {
                        player.playOrPause();
                      },
                      padding: EdgeInsets.zero,
                      splashRadius: 40,
                    );
                  }),
              IconButton(
                icon: const Icon(Icons.skip_next_sharp),
                color: greyclr,
                iconSize: 40,
                onPressed: playing.index == (dbSongs.length - 1)
                    ? () {}
                    : () {
                        player.next();
                        // print('${dbSongs.length} last index ');
                      },
                padding: EdgeInsets.zero,
                splashRadius: 30,
              ),
              BlocBuilder<NowPlayingBloc, NowPlayingState>(
                builder: (context, state) {
                  return IconButton(
                   icon:
                        Icon(
                            Icons.repeat_one_rounded,
                            color: state.repeat,
                        ),
                    color: greyclr,
                    iconSize: 30,
                    onPressed: () {
                      // setState(() {
                        BlocProvider.of<NowPlayingBloc>(context).add(const Repeat());
                      if (isRepeat == false) {
                        isRepeat = true;
                        player.setLoopMode(LoopMode.single);
                      } else {
                        isRepeat = false;
                        player.setLoopMode(LoopMode.none);
                      }
                      // });
                    },
                    padding: EdgeInsets.zero,
                    splashRadius: 30,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  PreferredSize appBar(double height, BuildContext context, dbSongs) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height / 8),
      child: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
          splashRadius: 25,
        ),
        actions: [
          player.builderCurrent(
            builder: (context, playing) {
              return FavIcons(
                  index: dbSongs.indexWhere(
                      (e) => e.songname == playing.audio.audio.metas.title));
            },
          ),
        ],
      ),
    );
  }
}

class SongDetails extends StatelessWidget {
  SongDetails({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  final AssetsAudioPlayer player = AssetsAudioPlayer.withId('0');

  @override
  Widget build(BuildContext context) {
    return player.builderCurrent(
      builder: (context, playing) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: width - 100,
                  width: width - 100,
                  child: QueryArtworkWidget(
                    id: int.parse(playing.audio.audio.metas.id!),
                    type: ArtworkType.AUDIO,
                    nullArtworkWidget: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/music.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
            height20,
            Text(
              player.getCurrentAudioTitle.split('-').first,
              style: textWhite22,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            height10,
            Text(
              player.getCurrentAudioArtist.split('-').first,
              style: textgrey14,
            ),
            player.builderCurrentPosition(
              builder: (context, currentPosition) {
                return Column(
                  children: [
                    Slider(
                      activeColor: whiteClr,
                      inactiveColor: greyclr,
                      thumbColor: selectedItemColor,
                      value: currentPosition.inSeconds.toDouble(),
                      min: 0.0,
                      max: playing.audio.duration.inSeconds.toDouble(),
                      onChanged: (value) {
                        Duration newDuration = Duration(seconds: value.toInt());
                        player.seek(newDuration);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${currentPosition.toString().split(':')[1]}:${currentPosition.toString().split(':')[2].split('.')[0]}',
                            style: textWhite18,
                          ),
                          Text(
                            '${playing.audio.duration.toString().split(':')[1]}:${playing.audio.duration.toString().split(':')[2].split('.')[0]}',
                            style: textWhite18,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            // height20,
            // height20,
          ],
        );
      },
    );
  }
}
