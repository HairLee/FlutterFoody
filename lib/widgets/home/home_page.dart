import 'package:flutter/material.dart';
import 'package:flutter_app_test/widgets/home/main/main_page.dart';
import 'package:flutter_app_test/widgets/home/message/message_page.dart';
import 'package:flutter_app_test/widgets/home/profile/profile_page.dart';
import 'package:flutter_app_test/widgets/home/setting/setting_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _title = "Home";
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainPage(),
    MessagePage(),
    ProfilePage(),
    MessagePage()
  ];

  final List<String> _titles= [
    "Home","Message","Profile","Message"
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _title = _titles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          ), new BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setting')
          ),

        ],
      ),
    );
  }
}
