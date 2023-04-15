import 'package:flutter/material.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport1.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport2.dart';
import 'package:tvlive/Sports/Dubai%20Sports/dubaisport3.dart';
import 'package:tvlive/Sports/Iraq%20Sports/iraqisport.dart';
import 'package:tvlive/Sports/Iraq%20Sports/rabiasport.dart';


Widget getIraqsports(int page) {
  switch (page) {
    case 1:
      return iraqiasport();
    case 2:
      return rabiaasport();
    default:
      return iraqiasport();
  }
}
