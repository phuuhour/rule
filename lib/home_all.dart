import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget HomeAll() {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      toolbarHeight: 70,
      backgroundColor: const Color.fromARGB(255, 255, 195, 54),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/imgs/appbar_logo.png',
            fit: BoxFit.contain,
            height: 70,
          ),
        ],
      ),
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 5),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 8),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: true,
              viewportFraction: 1.0,
              aspectRatio: 9 / 16,
            ),
            items: [
              'assets/imgs/slider1.png',
              'assets/imgs/slider2.png',
              'assets/imgs/slider3.png',
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Image.asset(i, fit: BoxFit.cover),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    ),
  );
}
