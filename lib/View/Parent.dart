import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_management_system/gridview_homescreen.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        title: ListTile(
          title: Text("Name Parent"),
          subtitle: Text("Class 10"),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/icons/parent.png'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(height: 5),

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
                height: MediaQuery.of(context).size.height * 0.54,
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
                      crossAxisCount: 3,
                      mainAxisSpacing: 0.3,
                      crossAxisSpacing: 0.3,
                      childAspectRatio: 1.0,
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
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
