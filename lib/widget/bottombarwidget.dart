import 'package:flutter/material.dart';


class Bottombar extends StatelessWidget {
  const Bottombar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.white,
      ),
      child: BottomNavigationBar(
        //currentIndex: _selectedTab,
       // onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_active), label: "Transaction"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_sharp,), label: "Profile"),
        ],
      ),
    );
  }
}
