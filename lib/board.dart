import 'package:flutter/material.dart';
import 'package:login_system/board.dart';

class DashBoard extends StatefulWidget {




  @override
  State createState()  => _State();
}

class _State extends State<DashBoard> {
  int index=0;
  final screens=[
    Center(child: Text("1sst"),),
    Center(child: Text("2nd"),),
    Center(child: Text("3rd"),),
    Center(child: Text("4th"),),
  ];
  @override
  Widget build(BuildContext context) => Scaffold (
    body: screens[index],
      bottomNavigationBar:NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          height: 60,
          backgroundColor: Colors.blueAccent.shade200,
          selectedIndex: index,
          onDestinationSelected: (index) =>
            setState(() =>this.index=index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.supervised_user_circle),
                selectedIcon: Icon(Icons.supervised_user_circle_outlined),
                label: "Donator"),

            NavigationDestination(
                icon: Icon(Icons.verified_user),
                selectedIcon: Icon(Icons.verified_user_outlined),
                label: "Receiver"),

            NavigationDestination(
                icon: Icon(Icons.volunteer_activism),
                selectedIcon: Icon(Icons.volunteer_activism_outlined),
                label: "Volunteer"),

            NavigationDestination(
                icon: Icon(Icons.integration_instructions),
                selectedIcon: Icon(Icons.integration_instructions_outlined),
                label: "AbouUs"),
          ],

        ),
      ),
  );
}


