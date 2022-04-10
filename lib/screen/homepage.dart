// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tugas1_prak_mobile_programming/screen/homepage1.dart';
import 'package:flutter_tugas1_prak_mobile_programming/screen/profilepage.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _TheCurrentIndex = 0;
  final screens = [
    homepage1(),
    Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 60),
      ),
    ),
    profilepage()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "HiMusic",
            style: TextStyle(fontFamily: 'Butler'),
          ),
          centerTitle: true,
        ),
        body: screens[_TheCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black87,
          currentIndex: _TheCurrentIndex,
          iconSize: 32,
          showUnselectedLabels: false,
          onTap: (index) => setState(
            () => _TheCurrentIndex = index,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
        ),
      );
}
