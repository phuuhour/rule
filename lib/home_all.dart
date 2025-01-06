import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_system/menu.dart';

Widget HomeAll(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.blueGrey[50],
    appBar: AppBar(
      toolbarHeight: 65,
      backgroundColor: Colors.blueGrey[50],
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 5),

            //slider auto use carousel_slider
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
                autoPlayAnimationDuration: Duration(milliseconds: 3000),
                pauseAutoPlayOnTouch: true,
                viewportFraction: 1.0,
                aspectRatio: 16 / 9,
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
                      margin: EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        color: Colors.amber[100],
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            i,
                            fit: BoxFit.fitHeight,
                          )),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),

            //language&date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        DateFormat('EEEE, dd, MMMM, yyyy')
                            .format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/kh_flag.png',
                          height: 20,
                          width: 35,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'ភាសាខ្មែរ',
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/uk_flag.png',
                          height: 20,
                          width: 35,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'English',
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            //menu
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 0.2,
                    crossAxisSpacing: 0.2,
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
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              menuItems[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
