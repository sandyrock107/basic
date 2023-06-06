import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';
class Splesh extends StatefulWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Singin()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 60,
          width: 220,
          color: Colors.white,
          child: const Image(
            image: AssetImage('assets/logo1.png',
            ),
            fit: BoxFit.fill,
          ),

        ),
      )


    );
  }
}
