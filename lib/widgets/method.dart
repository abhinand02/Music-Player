import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/style.dart';

AssetsAudioPlayer audioplayer = AssetsAudioPlayer();

AppBar appBar(String title, [IconButton? backButton, IconButton? trailingButton]) {
  return AppBar(
    leading: backButton,
    title: Text(
      title,
      style: textWhite22,
    ),
    elevation: 0,
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: trailingButton,
      )
    ],
  );
}

sleeptime(int picktime) {
  Timer(Duration(seconds: picktime), popFunction);
}

popFunction() {
  SystemNavigator.pop();
}

class ThemeProvider extends ChangeNotifier {
  ThemeData? currentTheme;

  setDarkMode(BuildContext context) {
    currentTheme =  ThemeData(
      fontFamily: 'Urbanist',
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: whiteClr),
        iconTheme: IconThemeData(color: whiteClr),
          backgroundColor: backGroundColor,
          toolbarTextStyle: TextStyle(color: whiteClr)),
      textTheme: Theme.of(context).textTheme.apply(bodyColor: whiteClr,),
      sliderTheme: const SliderThemeData(trackHeight: 2),
      listTileTheme: ListTileThemeData(
        iconColor: whiteClr,
      ),
      scaffoldBackgroundColor: backGroundColor,
      iconTheme: IconThemeData(color: whiteClr),
    );
    notifyListeners();
  }

  setLightMode(BuildContext context) {
    currentTheme = ThemeData(
      scaffoldBackgroundColor: whiteClr,
      iconTheme: IconThemeData(color: blackClr),
      listTileTheme: ListTileThemeData(
        iconColor: blackClr,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: whiteClr,
          iconTheme: IconThemeData(color: blackClr),
          titleTextStyle: TextStyle(color: blackClr),
          toolbarTextStyle: TextStyle(color: blackClr),),
      textTheme: Theme.of(context).textTheme.apply(bodyColor: blackClr,),
      sliderTheme: const SliderThemeData(trackHeight: 2),
      fontFamily: 'Urbanist',
    );
    notifyListeners();
  }
}