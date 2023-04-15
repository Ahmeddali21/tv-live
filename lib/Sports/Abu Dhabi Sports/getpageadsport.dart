import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsport1.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsport2.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsportpremium1.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsportpremium2.dart';

Widget getAdsports(int page) {
  switch (page) {
    case 1:
      return adsport1();
    case 2:
      return adsport2();
    default:
      return adsport1();
  }
}
Widget getAdsportspremium(int page) {
  switch (page) {
    case 1:
      return adsportpremium1();
    case 2:
      return adsportpremium2();
    default:
      return adsportpremium1();
  }
}