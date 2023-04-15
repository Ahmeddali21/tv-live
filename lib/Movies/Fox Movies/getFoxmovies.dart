import 'package:flutter/cupertino.dart';
import 'package:tvlive/Movies/Fox%20Movies/fox.dart';
import 'package:tvlive/Movies/Fox%20Movies/foxaction.dart';
import 'package:tvlive/Movies/Fox%20Movies/foxcrime.dart';

List<String> foxmovies = [
  'Fox Movies',
  'Fox Movies\nAction',
  'OSN Movies\nCrime',
];
Widget getFoxmovies(int page) {
  switch (page) {
    case 0:
      return fox();
    case 1:
      return foxaction();
    case 2:
      return foxcrime();
    default:
      return fox();
  }
}
