import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tvlive/Kids/beeinjeem.dart';
import 'package:tvlive/Movies/ART%20Movies/getArtaflam.dart';
import 'package:tvlive/Movies/Fox%20Movies/getFoxmovies.dart';
import 'package:tvlive/Movies/mbc2.dart';
import '../const.dart';
import 'getKids.dart';

class kids extends StatefulWidget {
  const kids({Key? key}) : super(key: key);
  @override
  _kidsState createState() => _kidsState();
}

class _kidsState extends State<kids> {
  // TODO convert json to object...
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: [
        //Bein Movies
        GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => jeem()));
              },
              child: container(
                  context,
                  Text(
                    'Bein Jeem',
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                  'Images/jeem.png',
                  color: Colors.black,
                  ))),
        for (int i = 0; i <= 9; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getKids(i)));
              },
              child: container(
                  context,
                  Text(
                    kidsnames[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                  imageKids[i],
                  ))),
      ],
      options: carusal(context),
    );
  }
}
