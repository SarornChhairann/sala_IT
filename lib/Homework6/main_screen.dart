import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab2/Homework6/home_travel_ui.dart';
import 'package:lab2/Homework6/profile_detail.dart';

import '../infrustruter/style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedItem;

  List<Widget>  lstPage=[
    const HomeTravelUi(),
    const SizedBox(),
    const SizedBox(),
    const ProfileDetail(),
  ];


  @override
  void initState() {
    _selectedItem=0;
    super.initState();
  }

  void selectedIndex(int index){
    setState(() {
      _selectedItem=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: lstPage[_selectedItem],
      bottomNavigationBar:BottomNavigationBar(
          currentIndex: _selectedItem,
          selectedItemColor: StyleP.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userGroup),
              label: "Friend",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: "Profile",
            ),
          ]
      ),
    );
  }
}
