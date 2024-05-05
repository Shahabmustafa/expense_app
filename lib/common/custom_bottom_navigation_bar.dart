
import 'package:expense_app/view/bottomnavigationbar/add/add_view.dart';
import 'package:expense_app/view/bottomnavigationbar/dashboard/dashboard_view.dart';
import 'package:expense_app/view/bottomnavigationbar/profile/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int currentIndex = 0;

  List Check = [
    const DashboardView(),
    const AddView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Check[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          enableFeedback: true,
          currentIndex: currentIndex,
          iconSize: 25,
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: "Post"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ],
        )
    );
  }
}