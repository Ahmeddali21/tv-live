import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Abu%20Dhabi%20Sports/adsport1.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsport1.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsport2.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsport3.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsport4.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsport5.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsportxtra1.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsportxtra2.dart';
import 'package:tvlive/Sports/SSC%20Sports/sscsportxtra3.dart';

Widget getSscsports(int page) {
  switch (page) {
    case 1:
      return sscsport1();
    case 2:
      return sscsport2();
    case 3:
      return sscsport3();
    case 4:
      return sscsport4();
    case 5:
      return sscsport5();
    default:
      return sscsport1();
  }
}

Widget getSscsportsxtra(int page) {
  switch (page) {
    case 1:
      return sscsportxtra1();
    case 2:
      return sscsportxtra2();
    case 3:
      return sscsportxtra3();
    default:
      return sscsportxtra1();
  }
}
