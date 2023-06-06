import 'package:flutter/material.dart';
class Coinview extends StatefulWidget {
  const Coinview({Key? key}) : super(key: key);

  @override
  State<Coinview> createState() => _CoinviewState();
}

class _CoinviewState extends State<Coinview> {
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          Container(
            height: 300,
            width: 390,

            child: const Image(
      image: AssetImage(
      'assets/coin.png',
      ),
      fit: BoxFit.cover,
    ),
          )
        ],
      ),
      
    );
  }
}

