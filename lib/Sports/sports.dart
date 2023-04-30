import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/getpageadsport.dart';
import 'package:tvlive/Sports/Alkass%20Sports/getKasssports.dart';
import 'package:tvlive/Sports/Iraq%20Sports/getIraqsports.dart';
import 'package:tvlive/Sports/SSC%20Sports/getsscsports.dart';
import 'package:tvlive/const.dart';

import 'Bein Sports/getpage.dart';
import 'Dubai Sports/getDubaisports.dart';

class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);
  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          CarouselSlider(options: carusal(context), items: [
            for (int i = 1; i <= 3; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getBeinsportspremium(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'Bein Sports\nPremium$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/be.png'),
                    ),
                  )),
            for (int i = 1; i <= 7; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getBeinsports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'Bein Sports$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/be.png'),
                    ),
                  )),
            for (int i = 1; i <= 2; i++)
              GestureDetector(
                  onTap: () {
                    
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getBeinsportsxtra(i)));
                
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'Bein Sports\nXtra$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/be.png'),
                    ),
                  )),
            for (int i = 1; i <= 2; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getAdsports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'AD Sports$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/ad.png'),
                    ),
                  )),
            for (int i = 1; i <= 2; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getAdsportspremium(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'AD Sports\nPremium$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/ad.png'),
                    ),
                  )),
            for (int i = 1; i <= 5; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getSscsports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'SSC Sports$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/ssc.png'),
                    ),
                  )),
            for (int i = 1; i <= 3; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getSscsportsxtra(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'SSC Sports\nXtra$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/ssc.png'),
                    ),
                  )),
                  for (int i = 1; i <= 4; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getKasssports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'AlKass Sports$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/kas.png'),
                    ),
                  )),
                  for (int i = 1; i <= 3; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getDubaisports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        'Dubai Sports$i',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset('Images/dub.png'),
                    ),
                  )),
            for (int i = 1; i <= 2; i++)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getIraqsports(i)));
                  },
                  child: Center(
                    child: container(
                      context,
                      Text(
                        i == 1 ? 'Iraqia Sports' : 'AlRabiaa',
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                      Image.asset(
                          i == 1 ? 'Images/iq.png' : 'Images/rabia.png'),
                    ),
                  )),
          ]),
        ],
      ),
    );
  }
}
