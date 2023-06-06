import 'dart:convert';

import 'package:flutter/material.dart';

import '../Dashboard/Dashboard2.dart';
import '../Razerpay/New banking.dart';
import '../Razerpay/Payment.dart';
import 'Api_addcoin_class.dart';
import 'package:http/http.dart' as http;
class Addcoin_ui extends StatefulWidget {
  const Addcoin_ui({Key? key}) : super(key: key);

  @override
  State<Addcoin_ui> createState() => _Addcoin_uiState();
}

class _Addcoin_uiState extends State<Addcoin_ui> {
  List<Addcoin> transList = [];
  @override
  Future<List<Addcoin>> FetchWelcome() async {
    final resp = await http.post(Uri.parse("https://truebroker.in/web_new/api/mobile/true_index.php"),
      body: (
          {"type": "16",
            "sub_type":"1",
            "lt":"4454",
            "ln":"4654534",
            "uid":"501",
            "device_id":"6445454",
            "cid":"13051305",
          }),
    );
    print("dvmsfnbd");

    if (resp.statusCode == 200) {
      transList.clear();

      (jsonDecode(resp.body) as List).forEach((s) {
        // print(s);
        transList.add(Addcoin.fromJson(s));


      });

      return transList;
    }
    throw ("Faild to load");
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Row(
          children: [
            // Row(
            //   children: [
            //     GestureDetector(onTap: (){
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) =>Dashboard  ()),
            //       );
            //
            //     },child:Icon(Icons.arrow_back_sharp), )
            //   ],
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            Row(
            children: [Text("Buy Coins",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),],
            )

          ],
        )
      ),
       body:  Container(
    child:  FutureBuilder<List<Addcoin>>(
        future: FetchWelcome(),
    builder: (context, snapshot) {
    print(  transList.length);
    if (snapshot.hasData) {
    print(  transList.length);
    return ListView.builder(
    itemCount: transList.length,
    itemBuilder: (BuildContext context,   index) {
    return Card(
    child: Column(
    children: [

  /*  Padding(
    padding: const EdgeInsets.only(left:10,),
    child: Container(
    height: 20,
    width: 330,
    color: Colors.white,
    child: Text(transList[index].coins.toString(),style: const TextStyle(
    fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
    ),),
    ),
    ),*/

    Center(

    child: Card(
    // elevation: 1,
    shadowColor: Colors.black,
    color: Colors.white60,
    child: SizedBox(
    width: 330,
    height: 150,
    child: Column(
    children: [
     /* Row(
        children: [
          Container(
            height: 30,
            width: 150,
            child: Text(transList[index].coins.toString(),style: const TextStyle(
                fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
            ),),
          ),
          const SizedBox(
              width: 40),
          Container(
            height: 30,
            width: 100,
            alignment: Alignment.topCenter,
            child: Text(transList[index].rupees.toString(),style: const TextStyle(
                fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
            ),),
          ),



        ],
      ),*/
      Row(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Paymentmode()),
                  );
                Paymentmode();
                },

                child: Container(
                  height: 150,

                  width: 330,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.fill,),
                  ),

                  // color: Colors.cyan,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [

                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child:   Container(
                          //     height: 50,
                          //     width: 50,
                          //     // color: Colors.cyanAccent,
                          //     decoration:  BoxDecoration(
                          //       borderRadius: BorderRadius.circular(100),
                          //       image: DecorationImage(
                          //         image: AssetImage("assets/coin2.png"),
                          //         fit: BoxFit.fill,),
                          //     ),
                          //
                          //
                          //   ),
                          // ),




                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 40,top: 3),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 60,
                                  width: 200,
                                  // color: Colors.white,
                                  child: Text(transList[index].coins.toString(),style: const TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 20,
                                  width: 290,
                                  // color: Colors.white,
                                  child: Text(transList[index].rupees.toString(),style: const TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white
                                  ),),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),

                    ],
                  )
                 ,
                ),
              ),

            ],
          ),

        ],
      ),


    //SizedBox
    ],
    ), //Padding
    ), //SizedBox
    ), //Card
    ),
    ],
    ),
    );
    });
    } else if (snapshot.hasError) {
    return Text(snapshot.error.toString());
    }
    return const CircularProgressIndicator();
    }

    )
    ),

    );
  }
}
