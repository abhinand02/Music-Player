import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Home/songs_by_artists.dart';
import 'package:music_player/main.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../constants/style.dart';
import 'home_screen.dart';


List<String> artistname =[];

class Artist extends StatelessWidget {
   Artist({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;
  late int newIndex;
  int count = 0;
  int count1 = 1;

 @override
  Widget build(BuildContext context) {
            return GridView.builder(
          padding: EdgeInsets.only(top: 10, bottom: playerVisibility ? 70 : 0),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (1),
          ),
          itemCount: artistname.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    check(artistname[index]);
                    // print(artistList[index].numberOfTracks);                    
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SongsByArtistScreen(
                            songsByArtists: songsByArtists,
                            artistsongs: artistsongs,
                              artistName: artistname[index]);
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    color: isDarkMode ? backGroundColor : whiteClr,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/music.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  artistname[index].split(',').toList()[0],
                  textAlign: TextAlign.center,
                  style: textWhite18,
                ),
                // Text(
                //   'Songs ${finalList[index]} ',
                //   style: textgrey18,
                // ),
              ],
            );
          },
        );
  }
}
void getArtist() async {
OnAudioQuery fetchartist = OnAudioQuery();
List<ArtistModel> artistList = [];
List<SongModel> tempsongs = [];

    artistList = await fetchartist.queryArtists();
     for(int i=0;i<artistList.length;i++){
      bool status= false;
      // tempsongs.clear(); 
       final temp= await fetchartist.queryAudiosFrom(AudiosFromType.ARTIST_ID, artistList[i].id,);
       for(int j=0; j<temp.length;j++){
        if(temp[j].fileExtension == 'mp3'){
         status=true;
          // finalList.clear(); 
          tempsongs.clear();
        tempsongs.add(temp[j]);
       }
       }
       if(status == true){
        artistname.add(temp[0].artist!);
        status=false;
       }
     }
   
   }

  List<Audio> songsByArtists = [];
  List<SongModel> artistsongs = [];
  check(String artistName) async {

    final OnAudioQuery fetchArtistSongs = OnAudioQuery();
   artistsongs.clear();
   songsByArtists.clear();
    final item = await fetchArtistSongs.queryAudiosFrom(
        AudiosFromType.ARTIST, artistName,
        sortType: SongSortType.TITLE, orderType: OrderType.ASC_OR_SMALLER);
    for (int i = 0; i < item.length; i++) {
      if (item[i].fileExtension == 'mp3') {
        artistsongs.add(item[i]);
      }
    }
    for (var songs in artistsongs) {
      songsByArtists.add(
        Audio.file(
          songs.uri.toString(),
          metas: Metas(
            title: songs.title,
            artist: songs.artist,
            id: songs.id.toString(),
          ),
        ),
      );
    }
  }