import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tvlive/Sports/beinsportspremium1.dart';
import 'package:tvlive/home.dart';
import 'package:carousel_slider/carousel_slider.dart';

class movies extends StatefulWidget {
  const movies({Key? key}) : super(key: key);
  @override
  _moviesState createState() => _moviesState();
}

class _moviesState extends State<movies> {

  // TODO convert json to object...
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      items: [
        for( int i=1; i<=7; i++ ) GestureDetector(
          onTap: ()  async {
            if(i==1){
              showDialog(context: context, builder: (context)=> alertsportpremium1());
            }
            else if(i==2){
            }
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
                  image: AssetImage('Images/bemov.png'),
                  alignment: Alignment.center,
                    scale: size.width/590,
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
                    '${'Bein Movies ' + '$i'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
        ),
        for( int i=1; i<=4; i++ ) GestureDetector(
          onTap: () {
            if(i==1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const beinsportpremium1sd1()));
            }
            else if(i==2){
              print('object');
            }
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
                image:  DecorationImage(
                  image: AssetImage('Images/osnmov.png'),
                  alignment: Alignment.center,
                  scale: size.width/700
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
                    '${'OSN Movies ' + '$i'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
        ),
        for( int i=1; i<=4; i++ ) GestureDetector(
          onTap: () {
            if(i==1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const beinsportpremium1sd1()));
            }
            else if(i==2){
              print('object');
            }
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
                  image: AssetImage('Images/artmov.png'),
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
                    '${'ART Movies' + '$i'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
        ),
        for( int i=1; i<=4; i++ ) GestureDetector(
          onTap: () {
            if(i==1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const beinsportpremium1sd1()));
            }
            else if(i==2){
              print('object');
            }
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
                image:  DecorationImage(
                  image: AssetImage('Images/foxmov.png'),
                  alignment: Alignment.center,
                  scale: size.width/420
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
                    '${'FOX Movies' + '$i'}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.072,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
        ),
        for( int i=1; i<=4; i++ ) GestureDetector(
          onTap: () {
            if(i==1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const beinsportpremium1sd1()));
            }
            else if(i==2){
              print('object');
            }
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
                    scale: size.width/700

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
                    '${'Dubai Sport' + '$i'}',
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
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const beinsportpremium1sd1()));
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
                    image: const AssetImage('Images/mbc2.png'),
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
                    '${'MBC2'}',
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