import 'package:flutter/material.dart';
import 'widgets.dart';
import 'user_profile.dart';

class Second extends StatefulWidget {
  const Second({Key key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<Widget> widgets = [
    UserProfile(),
    PointFile(),
    Text('Taisunov'),
  ];
  List<Color> colors = [
    Colors.orange[100],
    Colors.greenAccent[700],
    Colors.blue,
  ];
  List<Text> text = [
    Text('Profile'),
    Text('Message'),
    Text('Music'),
  ];

  int _indexnew = 0;
  @override
  Widget build(BuildContext context) {
    changeIndex(int index) {
      if (_indexnew == index) return;
      setState(() {
        _indexnew = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(child: text[_indexnew]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: colors[_indexnew],
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
        ],
        currentIndex: _indexnew,
        onTap: changeIndex,
      ),
      body: Container(
        child: widgets[_indexnew],
      ),
    );
  }
}
