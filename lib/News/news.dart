import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tvlive/Movies/ART%20Movies/getArtaflam.dart';
import 'package:tvlive/Movies/Fox%20Movies/getFoxmovies.dart';
import 'package:tvlive/Movies/mbc2.dart';
import 'package:tvlive/News/BBC%20+%20SKY%20+%20RT/skynews.dart';
import 'package:tvlive/News/Getnews.dart';
import 'package:tvlive/Series/ART/getArtseries.dart';
import 'package:tvlive/Series/CBC/getCbc.dart';
import 'package:tvlive/Series/MBC/getMbc.dart';
import '../const.dart';

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);
  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
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
        //Arabic News
        for (int i = 0; i <= 9; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getNews(i)));
              },
              child: container(
                  context,
                  Text(
                    News[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    imageNews[i],
                    color: Colors.black,
                    scale: 2,
                  ))),
              //Sky News
               GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sky()));
              },
              child: container(
                  context,
                  Text(
                    'Sky News',
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                   'Images/sky.png',
                   scale: 1.4,
                  ))), 
           //Iraq News
        for (int i = 0; i <= 9; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getIraqnews(i)));
              },
              child: container(
                  context,
                  Text(
                    iraqNews[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    imageIraq[i],
                    scale: 2,
                  ))),  
             //Iraq News2
        for (int i = 0; i <= 1; i++)
          GestureDetector(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getIraqnews2(i)));
              },
              child: container(
                  context,
                  Text(
                    iraqNews2[i],
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    imageIraq2[i],
                    color: Colors.black,
                  ))),  
      ],
      options: carusal(context),
    );
    
  }
}
