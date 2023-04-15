import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tvlive/Movies/ART%20Movies/getArtaflam.dart';
import 'package:tvlive/Movies/Fox%20Movies/getFoxmovies.dart';
import 'package:tvlive/Movies/mbc2.dart';
import 'package:tvlive/Series/ART/getArtseries.dart';
import 'package:tvlive/Series/CBC/getCbc.dart';
import 'package:tvlive/Series/MBC/getMbc.dart';
import '../const.dart';
import 'Bein Series/getBeinseries.dart';
import 'OSN/getOsnseries.dart';

class series extends StatefulWidget {
  const series({Key? key}) : super(key: key);
  @override
  _seriesState createState() => _seriesState();
}

class _seriesState extends State<series> {
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
        //Bein series
        for (int i = 0; i <= 2; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getBeinseries(i)));
              },
              child: container(
                  context,
                  Text(
                    beinseries[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/beins.png',
                    color: Colors.black,
                    scale: 0.5,
                  ))),
        //OSN series
        for (int i = 0; i <= 7; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getOsnseries(i)));
              },
              child: container(
                  context,
                  Text(
                    osnseries[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/osnseries.png',
                    scale: 0.1,
                  ))),
        //OSN series
        for (int i = 0; i <= 6; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getMbc(i)));
              },
              child: container(
                  context,
                  Text(
                    mbc[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/mbc.png',
                    scale: 10,
                  ))),
        //CBC
        for (int i = 0; i <= 1; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getCbc(i)));
              },
              child: container(
                  context,
                  Text(
                    cbc[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'Images/cbc.png',
                    scale: 10,
                  ))),
        //ART Hekayat
        for (int i = 0; i <= 1; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getArthekayat(i)));
              },
              child: container(
                  context,
                  Text(
                    arthekayat[i],
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
      ],
      options: carusal(context),
    );
  }
}
