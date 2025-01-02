import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system/menu.dart';

Widget HomeAll(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
      toolbarHeight: 65,
      backgroundColor: Colors.amber,
      elevation: 0,
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
              height: 220.0,
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
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                          height: 220,
                        )),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 5),

          //menu
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.8,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        menuItems[index].iconPath,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        menuItems[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 5),
        ],
      ),
    ),
  );
}
