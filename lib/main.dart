import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tvlive/%D8%AE%D9%82.dart';
import 'package:tvlive/vlc.dart';
import 'Sports.dart';
import 'aaa.dart';
import 'home.dart';
void main() => runApp(const MaterialApp(
  home:home(),
  debugShowCheckedModeBanner: true,));

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);
  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  @override
  void initState() {
    super.initState();
    Delay();
  }

  Future Delay() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
          backgroundColor: Color(0xff57f6c0),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Images/tv.png',width: 180,),
                      Padding(padding: EdgeInsets.only(top: 32),child:LoadingAnimationWidget.staggeredDotsWave(
                        size: 80, color: Colors.black,
                      ),)

                    ],
                  )

              )

            ],
          )
      ),
    );
  }
}
