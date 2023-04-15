import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport1.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport2.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport3.dart';

Widget getDubaisports(int page) {
  switch (page) {
    case 1:
      return dubaisports1();
    case 2:
      return dubaisports2();
    case 3:
      return dubaisports3();
    default:
      return dubaisports1();
  }
}
