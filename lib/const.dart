import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class carusal extends CarouselOptions {
  final BuildContext context;
  carusal(this.context)
      : super(
          height: MediaQuery.of(context).size.height * 0.35,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          viewportFraction: 0.6,
          enlargeCenterPage: false,
        );
}
class container extends Container {
  final BuildContext context;
  final Text text;
  final Image image;
  container(
    this.context,
    this.text,
    this.image,
  ) : super(
          width: MediaQuery.of(context).size.width * 0.5,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 243, 247),
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width * 0.08),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              text,
              Expanded(child: image),
              const SizedBox(height: 25.0),
            ],
          ),
        );
}