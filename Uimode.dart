import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Coin_class.dart';
class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  List<Coinmode> transList = [];
  @override
  Future<List<Coinmode>> FetchWelcome() async {
    final resp = await http.post(Uri.parse("https://truebroker.in/web_new/api/mobile/true_index.php"),
      body: (
          {"type": "14",
            "sub_type":"1",
            "lt":"4454",
            "ln":"4654534",
            "uid":"501",
            "device_id":"6445454",
            "cid":"13051305",
          }),
    );
    print("dvmsfnbd");
    // print(resp.body);
    if (resp.statusCode == 200) {
      transList.clear();
      //print(jsonDecode(resp.body)['Sucess']);
      (jsonDecode(resp.body) as List).forEach((s) {
        // print(s);
        transList.add(Coinmode.fromJson(s));
        //print(transList.last.priceNum.toString());
        //print(transList);

      });

      return transList;
    }
    throw ("Faild to load");
  }
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(),

        body: Container(
            child:  FutureBuilder<List<Coinmode>>(
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

                                Padding(
                                  padding: const EdgeInsets.only(left:10,),
                                  child: Container(
                                    height: 20,
                                    width: 330,
                                    child: Text(transList[index].date.toString(),style: const TextStyle(
                                        fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
                                    ),),
                                  ),
                                ),

                                Center(

                                  child: Card(
                                    elevation: 1,
                                    shadowColor: Colors.black,
                                    color: Colors.white60,
                                    child: SizedBox(
                                      width: 330,
                                      height: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [


                                                Container(
                                                  height: 30,
                                                  width: 150,
                                                  child: const Text("Coin",style: TextStyle(
                                                      fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black
                                                  ),),
                                                ),




                                                const SizedBox(
                                                    width: 40),
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  alignment: Alignment.topCenter,
                                                  child: const Text("Product",style: TextStyle(
                                                      fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black
                                                  ),),
                                                ),



                                              ],
                                            ),
                                            Row(
                                              children: [


                                                Container(
                                                  height: 30,
                                                  width: 150,
                                                  child: Text(transList[index].coin.toString(),style: const TextStyle(
                                                      fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
                                                  ),),
                                                ),




                                                const SizedBox(
                                                    width: 40),
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  alignment: Alignment.topCenter,
                                                  child: Text(transList[index].description.toString(),style: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
                                                  ),),
                                                ),



                                              ],
                                            ),
                                            //SizedBox
                                          ],
                                        ), //Column
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
