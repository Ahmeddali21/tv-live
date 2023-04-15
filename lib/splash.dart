
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/home.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future Delay() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home()));
    });
  }

  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
          child: Scaffold(
              backgroundColor: const Color(0xff2980b9),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image.asset('Images/tv.png',
                scale: 2,),
                SizedBox(height: 15,),
             LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.black,
          size: 75,
      ),
                ],),
              )));
  }
}
