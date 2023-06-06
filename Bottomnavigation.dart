import 'package:flutter/material.dart';



import '../Bottomnavgation_model/Profile.dart';
import '../Login/Regsister.dart';


import 'Dashboard2.dart';




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
    Profilview(),

  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 200,
            color: Colors.white,
            child:Row(
              children:  [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.cyanAccent,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            )
        );
      },
    );
  }

  void _navigateToAnotherPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnotherPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        // backgroundColor: Colors.cyan[50], // <-- This works for fixed
        selectedItemColor: Colors.black45,
        // unselectedItemColor: Colors.grey,

        // backgroundColor: Colors.cyanAccent,
        //fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.laptop_mac_rounded,
                color: Colors.black54,
              ),
              label: 'TASK'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_sharp,
                color: Colors.black54,
              ),
              label: 'GAMES'),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black54,

              ),

              label: 'Profile'),


        ],

        currentIndex: _index,
        onTap: _tap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,




    );
  }
}
class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('This is another page'),
      ),
    );
  }
}
