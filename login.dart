import 'package:flutter/material.dart';


import 'Email.dart';
import 'Mobile.dart';
class Singin extends StatefulWidget {
  const Singin({Key? key}) : super(key: key);

  @override
  State<Singin> createState() => _SinginState();
}
class _SinginState extends State<Singin> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar:PreferredSize(
          preferredSize: new Size(150.10, 150.10),
          child: AppBar(
            backgroundColor: const Color(0xff6ae792),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 260,
                  child: const Image(
                    image: AssetImage(
                      'assets/truebroker.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),

              ],
            ),
            bottom: const TabBar(

              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: "EMAIL",),
                Tab(text: "MOBILE",),

              ],
            ),),
        ),

        body: TabBarView(
          children: [
            Email(),
            Mobile()
          ],
        ),
      ),

    );
  }
}
