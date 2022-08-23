
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:tvlive/device_type/info_widget.dart';
import 'package:tvlive/vlc.dart';
import 'package:fullscreen/fullscreen.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import 'device_type/info_widget.dart';

class vlc extends StatefulWidget {
  const vlc({Key? key}) : super(key: key);

  @override
  _vlcState createState() => _vlcState();
}

class _vlcState extends State<vlc> {
  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {

        var mediaQueryData = MediaQuery.of(context);
        double screenHeight = MediaQuery.of(context).size.height;
        double screenWidth = MediaQuery.of(context).size.width;
        return MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.black ,
              body:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1,
                      child: VlcPlayer(controller: VlcPlayerController.network('https://admdn2.cdn.mangomolo.com/adtv/smil:adtv.stream.smil/playlist.m3u8',
                        autoInitialize: true,
                        hwAcc: HwAcc.auto, ), aspectRatio: 16/9),
                    )
                  ],
                ),
            )
        );
      });
}
void enterFullScreen(FullScreenMode fullScreenMode) async {
  await FullScreen.enterFullScreen(fullScreenMode);
}

void exitFullScreen() async {
  await FullScreen.exitFullScreen();
}
Future setPortrait() async => await SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]);

Future setLandscape() async => await SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
]);

Future setPortraitAndLandscape() =>
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);