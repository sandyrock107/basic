import 'dart:convert';

import 'package:flutter/material.dart';

import '../Api/Icon api/Coin_class.dart';
import 'package:http/http.dart' as http;

import '../Dashboard/Dashboard2.dart';
import '../Razerpay/New banking.dart';
import 'Addcoin_uimode.dart';



class sp1 extends StatelessWidget {
   sp1({Key? key}) : super(key: key);
  List<Coinmode> transList = [];

  get index => null;
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

    if (resp.statusCode == 200) {
      transList.clear();

      (jsonDecode(resp.body) as List).forEach((s) {
        // print(s);
        transList.add(Coinmode.fromJson(s));


      });

      return transList;
    }
    throw ("Faild to load");
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body: NestedScrollView(

            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  //title: const Text('Floating Nested SliverAppBar'),
                  // floating: true,
                  expandedHeight: 300,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: Container(
                    color: Colors.green,
                    child: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/coin1.png"),
                                          fit: BoxFit.contain,
                                        ),

                                        ),
                                    height: 300,
                                    width: 380,
                                    //color: Colors.cyan,
                                    child: Row(
                                      children: [


                                        Padding(
                                          padding: const EdgeInsets.only(top: 120,left: 50),
                                          child: GestureDetector(
                                              onTap: (){},
                                              child: const Text(
                                            "See More",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white,
                                            ),
                                          )
                                        ),


                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 50, ),
                                          child: GestureDetector(
                                            onTap: (){
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(builder: (context) => const Dashboard()));
                                            },
                                            // child:Text(transList[index].coin.toString(),style: const TextStyle(
                                            //     fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
                                            // ),),
                                            child: Text("2000",style: TextStyle(fontSize: 16,color: Colors.white),),
                                            // child: Icon(Icons.arrow_back,size: 30,color: Colors.white,)
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 150,left: 140),
                                          child: GestureDetector(
                                              onTap: (){
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => const Addcoin_ui()));
                                              },
                                               child: Icon(Icons.add_circle,size: 35,color: Colors.white,)),
                                          ),


                                        ],
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),


                          Column(
                            children: [
                              Container(
                                height: 15,
                                width: 290,
                                child: const Center(
                                  child: Text("Your Transation History",style: TextStyle(
                                      fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600
                                  ),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                                          color: Colors.white,
                                          child: Text(transList[index].date.toString(),style: const TextStyle(
                                              fontWeight: FontWeight.w500,fontSize: 14,color: Colors.green
                                          ),),
                                        ),
                                      ),

                                      Center(

                                        child: Card(
                                          // elevation: 1,
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
            ),));
  }
}
