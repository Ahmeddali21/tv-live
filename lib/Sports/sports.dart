import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/Sports/beinsport1.dart';
import 'package:tvlive/Sports/beinsportspremium1.dart';
import 'package:tvlive/Sports/beinsportsxtra2.dart';
import 'package:tvlive/home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'beinsport2.dart';
import 'beinsport3.dart';
import 'beinsport4.dart';
import 'beinsport5.dart';
import 'beinsport6.dart';
import 'beinsport7.dart';
import 'beinsportspremium2.dart';
import 'beinsportspremium3.dart';
import 'beinsportsxtra1.dart';

class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);
  @override
  _sportsState createState() => _sportsState();
}

class _sportsState extends State<sports> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: [
        for (int i = 1; i <= 3; i++)
          GestureDetector(
            onTap: () async {
              if (i == 1) { Navigator.push(context, MaterialPageRoute(builder: (context) => alertsportpremium1())); }
              else if (i == 2) { Navigator.push(context, MaterialPageRoute(builder: (context) => alertsportpremium2())); }
              else if (i == 3) { Navigator.push(context, MaterialPageRoute(builder: (context) => alertsportpremium3())); }
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/be.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'Bein Sports\nPremium $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.080,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 2; i++)
          GestureDetector(
            onTap: () async {
              if (i == 1) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsportxtra1())); }
              else { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsportxtra2())); }
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/be.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'Bein Sports\nXTRA $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.080,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 7; i++)
          GestureDetector(
            onTap: () async {
              if (i == 1) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport1())); }
              else if (i == 2) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport2())); }
              else if (i == 3) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport3())); }
              else if (i == 4) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport4())); }
              else if (i == 5) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport5())); }
              else if (i == 6) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport6())); }
              else if (i == 7) { Navigator.push(context, MaterialPageRoute(builder: (context) => const alertsport7())); }
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/be.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'Bein Sports $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.080,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 4; i++)
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const alertsportpremium1());
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/ad.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'AD Sports $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.072,

                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 4; i++)
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const alertsportpremium1());
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/ssc.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'SSC Sports $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.072,

                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 4; i++)
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const alertsportpremium1());
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: const DecorationImage(
                    image: AssetImage('Images/kas.png'),
                    alignment: Alignment.center,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'Alkass Sports ' '$i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.072,

                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        for (int i = 1; i <= 4; i++)
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => const alertsportpremium1());
            },
            child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.0025),
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                    vertical: size.height * 0.0045),
                height: size.height * 0.001,
                width: size.width * 0.56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.08),
                  color: const Color(0xfff1f2f6),
                  image: DecorationImage(
                      image: const AssetImage('Images/dub.png'),
                      alignment: Alignment.center,
                      scale: size.width / 700),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
//color of shadow
                      spreadRadius: 2,
//spread radius
                      blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: size.height / 180),
                    Text(
                      'Dubai Sports $i',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.072,

                          fontWeight: FontWeight.w300),
                    )
                  ],
                )),
          ),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => const alertsportpremium1());
          },
          child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                  vertical: size.height * 0.0025),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.01,
                  vertical: size.height * 0.0045),
              height: size.height * 0.001,
              width: size.width * 0.56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * 0.08),
                color: const Color(0xfff1f2f6),
                image: DecorationImage(
                    image: const AssetImage('Images/iq.png'),
                    alignment: Alignment.center,
                    scale: size.width / 900),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
//color of shadow
                    spreadRadius: 2,
//spread radius
                    blurRadius: 3, // blur radius
// offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: size.height / 180),
                  Text(
                    'Iraqia Sports',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.072,

                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
        ),
      ],
      options: CarouselOptions(
        height: size.height / 2.5,
        autoPlay: true,
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.5,
      ),
    );
  }
}
