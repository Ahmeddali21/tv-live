import 'package:flutter/cupertino.dart';
import 'package:tvlive/Series/Bein%20Series/beinseries1.dart';
import 'package:tvlive/Series/CBC/cbc1.dart';
import 'package:tvlive/Series/CBC/cbcdrama.dart';

List<String> cbc = [
  'CBC 1' , 
  'CBC Drama'
];
Widget getCbc(int page) {
  switch (page) {
    case 0:
      return const cbc1();
    case 1:
      return const cbcdrama();
    default:
      return const cbc1();
  }
}
