/*
import 'package:flutter/material.dart';


import '../Dashboard2.dart';
import '../Login/Regsister_login.dart';
import '../Login/login.dart';
import 'Dashboard1.dart';




class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  int _index = 0;

  final pages = [
    Dashboard(),
    Reg_login(),
    Reg_login(),
    Singin(),

  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.cyan[50], // <-- This works for fixed
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        // backgroundColor: Colors.cyanAccent,
        //fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: 'TASK'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'GAMES'),
           BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'ORDER'),
        ],
        currentIndex: _index,
        onTap: _tap,
      ),

    );
  }
}*/
