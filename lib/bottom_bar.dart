
import 'package:flutter/material.dart';
import 'package:instagram_ui_design/insta_ui_icons.dart';
import 'package:instagram_ui_design/screens/fav.dart';
import 'package:instagram_ui_design/screens/home.dart';
import 'package:instagram_ui_design/screens/profile.dart';
import 'package:instagram_ui_design/screens/reels.dart';
import 'package:instagram_ui_design/screens/search.dart';

class Bottom_Bar extends StatefulWidget {
  Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Bar> createState() => _Bottom_BarState();
}

class _Bottom_BarState extends State<Bottom_Bar> {


  int selectedindex=0;

  List pages =[
    HomePage(),
    SearchPage(),
    Reels(),
    Favourite(),
    Profile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: (index)=>setState(() {
          selectedindex=index;
        }),
        items: [
          BottomNavigationBarItem( 
            label: '',
            icon: Icon(Insta_ui.home)
            ),
           BottomNavigationBarItem(
             label: '',
             icon: Icon(Insta_ui.search)),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Insta_ui.instagram)),
             BottomNavigationBarItem(
               label: '',
               icon: Icon(Insta_ui.user)),
        ],
      ),
    );
  }
}