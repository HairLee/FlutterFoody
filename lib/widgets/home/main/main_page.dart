import 'package:flutter/material.dart';
import 'package:flutter_app_test/widgets/home/main/media_list_item.dart';
import 'media_list.dart';




class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MediaListItem();
  }
}
