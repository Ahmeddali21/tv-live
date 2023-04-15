import 'package:flutter/cupertino.dart';
import 'package:tvlive/Movies/ART%20Movies/artaflam1.dart';
import 'package:tvlive/Movies/ART%20Movies/artaflam2.dart';
import 'package:tvlive/Movies/ART%20Movies/artcinema.dart';

List<String> artaflam = [
  'ART Aflam 1',
  'ART Aflam 2',
  'ART Aflam\nCinema',
];
Widget getArtaflam(int page) {
  switch (page) {
    case 0:
      return artaflam1();
    case 1:
      return artaflam2();
    case 2:
      return artcinema();
    default:
      return artaflam1();
  }
}
