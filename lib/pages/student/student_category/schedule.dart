import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:widget_zoom/widget_zoom.dart';

class StudentSchedule extends StatefulWidget {
  const StudentSchedule({super.key});

  @override
  _StudentScheduleState createState() => _StudentScheduleState();
}

class _StudentScheduleState extends State<StudentSchedule> {
  String scheduleImage = 'assets/imgs/schedules1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
            size: 22,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Schedule",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          PopupMenuButton<String>(
            color: Colors.white,
            icon: HugeIcon(
                icon: HugeIcons.strokeRoundedMoreVerticalCircle01,
                color: Colors.black87),
            onSelected: (value) {
              setState(() {
                scheduleImage = value == 'term1'
                    ? 'assets/imgs/schedules1.png'
                    : 'assets/imgs/schedules2.png';
              });
            },
            menuPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'term1',
                child: Text('Term 1'),
              ),
              const PopupMenuItem<String>(
                value: 'term2',
                child: Text('Term 2'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: WidgetZoom(
          heroAnimationTag: '',
          zoomWidget: Image.asset(
            scheduleImage,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
