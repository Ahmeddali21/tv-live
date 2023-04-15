import 'package:flutter/cupertino.dart';
import 'package:tvlive/Movies/Bein%20Movies/beinaction.dart';
import 'package:tvlive/Movies/OSN/osnaction.dart';
import 'package:tvlive/Movies/OSN/osncomedy.dart';
import 'package:tvlive/Movies/OSN/osnfamily.dart';
import 'package:tvlive/Movies/OSN/osnhollywood.dart';
import 'package:tvlive/Movies/OSN/osnpremiere.dart';
import 'package:tvlive/Movies/OSN/osnyahalaaflam.dart';

List<String> osnmovies = [
  'AlHadath',
  'AlArabiy',
];
Widget getOsnmovies(int page) {
  switch (page) {
    case 0:
      return osnaction();
    case 1:
      return osnpremiere();
    case 2:
      return osncomedy();
    case 3:
      return osnfamily();
    case 4:
      return osnhollywood();
    case 5:
      return osnyahala();
    default:
      return osnaction();
  }
}
