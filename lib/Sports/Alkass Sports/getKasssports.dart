import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsport1.dart';
import 'package:tvlive/Sports/Alkass%20Sports/alkasssport1.dart';
import 'package:tvlive/Sports/Alkass%20Sports/alkasssport2.dart';
import 'package:tvlive/Sports/Alkass%20Sports/alkasssport3.dart';
import 'package:tvlive/Sports/Alkass%20Sports/alkasssport4.dart';

Widget getKasssports(int page) {
  switch (page) {
    case 1:
      return kasssport1();
    case 2:
      return kasssport2();
    case 3:
      return kasssport3();
    case 4:
      return kasssport4();
    default:
      return kasssport1();
  }
}
