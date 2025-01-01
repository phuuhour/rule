import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget HomeAll(BuildContext context) {
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
            height: 80,
          ),
        ],
      ),
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 5),

          //slider auto use carousel_slider
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 15),
              autoPlayAnimationDuration: Duration(milliseconds: 3000),
              pauseAutoPlayOnTouch: true,
              viewportFraction: 1.0,
              aspectRatio: 9 / 16,
              autoPlayCurve: Curves.fastOutSlowIn,
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
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(i, fit: BoxFit.cover)),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 5),

          //idioms
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 195, 54),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('Royal university law and economics',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    ),
  );
}
