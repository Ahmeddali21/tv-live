import 'package:flutter/cupertino.dart';
import 'package:tvlive/Movies/Bein%20Movies/beinaction.dart';
import 'package:tvlive/Movies/Bein%20Movies/beindrama.dart';
import 'package:tvlive/Movies/Bein%20Movies/beinfamily.dart';
import 'package:tvlive/Movies/Bein%20Movies/beinpremiere.dart';

List<String> beinmovies = ['Bein Movies\nAction', 'Bein Movies\nPremiere',
 'Bein Movies\nDrama', 'Bein Movies\nFamily'];
Widget getBeinmovies(int page) {
  switch (page) {
    case 0:
      return beinaction();
    case 1:
      return beinpremiere();
    case 2:
      return beindrama();
    case 3:
      return beinfamily();
    default:
      return beinaction();
  }
}
