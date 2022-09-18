import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tvlive/Sports/beinsportspremium1.dart';
import 'package:tvlive/home.dart';


void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:home()),
  );
}

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
      home: Scaffold(
          backgroundColor: Color(0xff2980b9),
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
