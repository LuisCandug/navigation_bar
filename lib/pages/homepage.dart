import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selected = 0;

  void Onselected(int index) {
    setState(() {
      selected = index;
    });

  }
  final List<Widget> pages = [
    Home(), Profile(), Setting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage'),),
      bottomNavigationBar: BottomNavigationBar
      (currentIndex: selected,
        onTap: Onselected,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ]
      
      ),
      body: Center(
        child: pages[selected],
      ),
    );
  }
}