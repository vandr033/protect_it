import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xFFFDD804),
                  size: 43,
                ),
                label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 43,
                  color: Color(0xFFFDD804),
                ),
                label: 'Add Password'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                  color: Color(0xFFFDD804),
                  size: 43,
                ),
                label: 'Logout')
          ]),
    );
  }
}
