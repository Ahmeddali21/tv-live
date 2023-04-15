import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tvlive/Movies/ART%20Movies/getArtaflam.dart';
import 'package:tvlive/Movies/Fox%20Movies/getFoxmovies.dart';
import 'package:tvlive/Movies/mbc2.dart';
import '../const.dart';
import 'Bein Movies/getBeinmovies.dart';
import 'OSN/getOsnmovies.dart';

class movies extends StatefulWidget {
  const movies({Key? key}) : super(key: key);
  @override
  _moviesState createState() => _moviesState();
}

class _moviesState extends State<movies> {
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
        for (int i = 0; i <= 3; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getBeinmovies(i)));
              },
              child: container(
                  context,
                  Text(
                    beinmovies[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/bemov.png',
                    color: Colors.black,
                  ))),
        //OSN Movies
        for (int i = 0; i <= 5; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getOsnmovies(i)));
              },
              child: container(
                  context,
                  Text(
                    osnmovies[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/osn.png',
                    scale: 0.1,
                  ))),
        //Fox Movies
        for (int i = 0; i <= 2; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getFoxmovies(i)));
              },
              child: container(
                  context,
                  Text(
                    foxmovies[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/foxmov.png',
                    scale: 1.2,
                  ))),
        //ART Aflam
        for (int i = 0; i <= 2; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getArtaflam(i)));
              },
              child: container(
                  context,
                  Text(
                    artaflam[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/art.png',
                    scale: 4.5,
                    color: Colors.black,
                  ))),
        //MBC2

        GestureDetector(
            onTap: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => mbc2()));
            },
            child: container(
                context,
                Text(
                  'MBC 2',
                  style: TextStyle(
                      fontSize: size.width * 0.06, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  'Images/mbc2.png',
                  color: Colors.black,
                ))),
      ],
      options: carusal(context),
    );
  }
}
