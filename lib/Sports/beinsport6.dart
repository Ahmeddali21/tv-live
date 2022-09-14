import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:flutter/material.dart';
import 'package:tvlive/home.dart';

class alertsport6 extends StatefulWidget {
  const alertsport6({Key? key}) : super(key: key);
  @override
  _alertsport6State createState() => _alertsport6State();
}
class _alertsport6State extends State<alertsport6> {
  @override
  void initState() {
    super.initState();
    _forceLandscape();
  }
  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }
  @override
  void dispose() {
    _forcePortrait();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: AlertDialog(
              title: Text(
                'Select The Quality',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.06,
                    fontWeight: FontWeight.w300),
              ),
              backgroundColor: const Color(0xff2980b9),
              scrollable: true,
              actionsAlignment: MainAxisAlignment.center,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(size.width / 60))),
              actions: [
                besppreimum1(),
              ],
            ),
          ),
        ),
        onWillPop: () async {
          return true;
        });
  }
}

Widget besppreimum1() {
  return Builder(builder: (context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const beinsport6sd1()));
                },
                child: Text(
                  'SD ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w300),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const beinsport6hd1()));
                },
                child: Text(
                  'HD',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w300),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const beinsport6fhd1()));
                },
                child: Text(
                  'FHD',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w300),
                )),
          ],
        ),
      ],
    );
  });
}

//Bein Sports 6 SD

class beinsport6sd1 extends StatefulWidget {
  const beinsport6sd1({Key? key}) : super(key: key);

  @override
  _beinsport6sd1State createState() => _beinsport6sd1State();
}

class _beinsport6sd1State extends State<beinsport6sd1> {
  late VlcPlayerController vlcController;

  @override
  void initState() {
    super.initState();
    _forceLandscape();
    const videoURL = "http://red.ipfox.org:8080/Karam2022/Karam2023/31595";
    vlcController = VlcPlayerController.network(videoURL, autoPlay: true);
    // Uncomment  if you want autoplay to stop
    // vlcController.addOnInitListener(_stopAutoplay);
  }

  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }

  @override
  void dispose() {
    _forcePortrait();
    vlcController.stopRendererScanning();
    vlcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: VlcPlayer(
                    controller: vlcController,
                    aspectRatio: 16 / 9,
                  ),
                ),
              )),
          onTap: () {
            Navigator.push(
                context,
                DialogRoute(
                    context: context,
                    builder: (context) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height / 50,
                            ),
                            Row(
                              children: [
                                for (int i = 1; i <= 6; i++)
                                  Stack(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            i == 1
                                                ? vlcController.setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31595')
                                                : i == 2
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31583')
                                                : i == 3
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://gbox.goldeniptv.com:25461/123321/123321/137748')
                                                : i == 4
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/1772')
                                                : i == 5
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/7783')
                                                : i == 6
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/70990')
                                                : '';
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: const Color(0xff2980b9),
                                            shape: const CircleBorder(),
                                            fixedSize: Size(size.width / 9,
                                                size.height / 9)),
                                        child: Text(i == 1
                                            ? 'SD 1'
                                            : i == 2
                                            ? 'SD 2'
                                            : i == 3
                                            ? 'HD 1'
                                            : i == 4
                                            ? 'HD 2'
                                            : i == 5
                                            ? 'FHD 1': i==6? 'FHD 2'
                                            : ''),
                                      )
                                    ],
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  vlcController.setMediaFromNetwork(
                                      'http://red.ipfox.org:8080/Karam2022/Karam2023/31595');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff2980b9),
                                  shape: const CircleBorder(),
                                  fixedSize:
                                      Size(size.width / 9, size.height / 9)),
                              child: const Icon(
                                Icons.replay,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )));
          },
        ),
        onWillPop: () async {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const home()));
          return false;
        });
  }
}

//Bein Sports 6 HD

class beinsport6hd1 extends StatefulWidget {
  const beinsport6hd1({Key? key}) : super(key: key);

  @override
  _beinsport6hd1State createState() => _beinsport6hd1State();
}

class _beinsport6hd1State extends State<beinsport6hd1> {
  late VlcPlayerController vlcController;
  @override
  void initState() {
    super.initState();
    _forceLandscape();
    const videoURL = "http://gbox.goldeniptv.com:25461/123321/123321/137748";
    vlcController = VlcPlayerController.network(videoURL, autoPlay: true);

    // Uncomment  if you want autoplay to stop
    // vlcController.addOnInitListener(_stopAutoplay);
  }

  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }

  @override
  void dispose() {
    _forcePortrait();
    vlcController.stopRendererScanning();
    vlcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: VlcPlayer(
                    controller: vlcController,
                    aspectRatio: 16 / 9,
                  ),
                ),
              )),
          onTap: () {
            Navigator.push(
                context,
                DialogRoute(
                    context: context,
                    builder: (context) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height / 50,
                            ),
                            Row(
                              children: [
                                for (int i = 1; i <= 6; i++)
                                  Stack(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            i == 1
                                                ? vlcController.setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31595')
                                                : i == 2
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31583')
                                                : i == 3
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://gbox.goldeniptv.com:25461/123321/123321/137748')
                                                : i == 4
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/1772')
                                                : i == 5
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/7783')
                                                : i == 6
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/70990')
                                                : '';
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: const Color(0xff2980b9),
                                            shape: const CircleBorder(),
                                            fixedSize: Size(size.width / 9,
                                                size.height / 9)),
                                        child: Text(i == 1
                                            ? 'SD 1'
                                            : i == 2
                                            ? 'SD 2'
                                            : i == 3
                                            ? 'HD 1'
                                            : i == 4
                                            ? 'HD 2'
                                            : i == 5
                                            ? 'FHD 1': i==6? 'FHD 2'
                                            : ''),
                                      )
                                    ],
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  vlcController.setMediaFromNetwork(
                                      'http://gbox.goldeniptv.com:25461/123321/123321/137748');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff2980b9),
                                  shape: const CircleBorder(),
                                  fixedSize:
                                      Size(size.width / 9, size.height / 9)),
                              child: const Icon(
                                Icons.replay,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )));
          },
        ),
        onWillPop: () async {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const home()));
          return false;
        });
  }
}

//Bein Sports 6 FHD

class beinsport6fhd1 extends StatefulWidget {
  const beinsport6fhd1({Key? key}) : super(key: key);

  @override
  _beinsport6fhd1State createState() => _beinsport6fhd1State();
}

class _beinsport6fhd1State extends State<beinsport6fhd1> {
  late VlcPlayerController vlcController;
  @override
  void initState() {
    super.initState();
    _forceLandscape();
    const videoURL = "http://cobraa.in:8000/722617770836/616b3a83cb751/7783";
    vlcController = VlcPlayerController.network(videoURL, autoPlay: true);

    // Uncomment  if you want autoplay to stop
    // vlcController.addOnInitListener(_stopAutoplay);
  }

  Future<void> _forceLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  Future<void> _forcePortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }

  @override
  void dispose() {
    _forcePortrait();
    vlcController.stopRendererScanning();
    vlcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: VlcPlayer(
                    controller: vlcController,
                    aspectRatio: 16 / 9,
                  ),
                ),
              )),
          onTap: () {
            Navigator.push(
                context,
                DialogRoute(
                    context: context,
                    builder: (context) => Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height / 50,
                            ),
                            Row(
                              children: [
                                for (int i = 1; i <= 6; i++)
                                  Stack(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            i == 1
                                                ? vlcController.setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31595')
                                                : i == 2
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://red.ipfox.org:8080/Karam2022/Karam2023/31583')
                                                : i == 3
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://gbox.goldeniptv.com:25461/123321/123321/137748')
                                                : i == 4
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/1772')
                                                : i == 5
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/7783')
                                                : i == 6
                                                ? vlcController
                                                .setMediaFromNetwork(
                                                'http://cobraa.in:8000/722617770836/616b3a83cb751/70990')
                                                : '';
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: const Color(0xff2980b9),
                                            shape: const CircleBorder(),
                                            fixedSize: Size(size.width / 9,
                                                size.height / 9)),
                                        child: Text(i == 1
                                            ? 'SD 1'
                                            : i == 2
                                            ? 'SD 2'
                                            : i == 3
                                            ? 'HD 1'
                                            : i == 4
                                            ? 'HD 2'
                                            : i == 5
                                            ? 'FHD 1': i==6? 'FHD 2'
                                            : ''),
                                      )
                                    ],
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  vlcController.setMediaFromNetwork(
                                      'http://cobraa.in:8000/722617770836/616b3a83cb751/7783');
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff2980b9),
                                  shape: const CircleBorder(),
                                  fixedSize:
                                      Size(size.width / 9, size.height / 9)),
                              child: const Icon(
                                Icons.replay,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )));
          },
        ),
        onWillPop: () async {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const home()));
          return false;
        });
  }
}
