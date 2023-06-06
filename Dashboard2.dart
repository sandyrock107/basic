/*
import 'package:flutter/material.dart';



import '../Api/Uimode.dart';
import '../Coins_frame/Scrollview.dart';
import '../Razerpay/New banking.dart';
import 'Dashboard1.dart';
import 'demo.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
*/
/**//*

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(


          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(5.0),

              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          height: 33,
                          width: 120,
                          child:Image.asset('assets/truebroker.png',fit: BoxFit.fill,
                            height: 32,width: 102,),

                        ),
                      ),


                      const SizedBox(
                        width: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                        child: Container(
                            height: 20,
                            width: 30,
                            child:Center(
                              child: Text("True",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20,),
                        child: Container(
                          height: 23,
                          width: 23,
                          child:GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(left: 10),
                                            height: 35,
                                            width: 190,
                                            child:  Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Image.asset('assets/truebroker.png',fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),

                                          const Center(
                                            child: Text('Total True Coin In your Account',style: TextStyle(color: Colors.indigo,fontSize: 16),

                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                height: 30,
                                                width: 490,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),color:Colors.grey,),
                                                child:Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10),
                                                      child: Image.asset('assets/icon.png',fit: BoxFit.fill,
                                                        height: 20,width: 23,),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    InkWell(
                                                      child: Center(child: Text('2000',style: TextStyle(color: Colors.indigo[900],fontSize: 18),)),
                                                      onTap: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),

                                                  ],
                                                )
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          GestureDetector(
                                            child: RichText(
                                              text: const TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'To Get Coin Ln Your Account ',
                                                    style: TextStyle(color: Colors.indigo,fontSize: 13),
                                                  ),
                                                  TextSpan(
                                                    text: 'CLICK HERE',
                                                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700,fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            onTap: () {
                                              // do something
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => sp1()),
                                              );
                                            },
                                          ),
                                        ],
                                      ),



                                    );
                                  },
                                );
                              }, child:Image.asset('assets/icon.png',fit: BoxFit.fill,
                            height: 32,width: 23,)
                          )



                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(

                        padding: const EdgeInsets.only(top:20,left: 5),
                        child: Container(
                          height: 23,
                          width: 23,
                          child:GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(left: 10),
                                          height: 35,
                                          width: 190,
                                          child:  Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Image.asset('assets/truebroker.png',fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),

                                        const Center(
                                          child: Text('Total True Coin In your Account',style: TextStyle(color: Colors.indigo,fontSize: 16),

                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              height: 30,
                                              width: 490,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),color:Colors.grey,),
                                              child:Row(
                                                children: [
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:10),
                                                    child: Image.asset('assets/icon.png',fit: BoxFit.fill,
                                                      height: 20,width: 23,),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  InkWell(
                                                    child: Center(child: Text('2000',style: TextStyle(color: Colors.indigo[900],fontSize: 18),)),
                                                    onTap: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                  ),

                                                ],
                                              )
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        GestureDetector(
                                          child: RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'To Get Coin Ln Your Account ',
                                                  style: TextStyle(color: Colors.indigo,fontSize: 13),
                                                ),
                                                TextSpan(
                                                  text: 'CLICK HERE',
                                                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700,fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),

                                          onTap: () {
                                            // do something
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),



                                  );
                                },
                              );
                            },child:  Image.asset('assets/Notify.png',fit: BoxFit.fill,
                            height: 32,width: 23,) ,
                          )








                        ),
                      )],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  // header section//

                  Container(
                    height: 40,
                    width: 390,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child:  TabBar(
                      indicator: BoxDecoration(
                          color: Colors.green[500],
                          borderRadius:  BorderRadius.circular(20.0)
                      ) ,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs:   [
                        Tab(
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),

                            ),
                            child:GestureDetector(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()),
                              );},
                              child:Center(child: Text("Chats")),

                            ),
                          ),),
                        Tab(child:
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()),
                            );},
                            child:Center(child: Text("Status")),

                          ),
                        ),),
                        Tab(child:
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => App()),
                            );},
                            child:Center(child: Text("Calls")),

                          ),
                        ),),
                        Tab(child:
                        Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => App()),
                            );},
                            child:Center(child: Text("Setting")),

                          ),
                        ),),






                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Divider(
                    color: Colors.black45,
                    height: 25,
                    thickness: 0,
                    indent: 2,
                    endIndent: 2,

                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //buy sale rent lease//
                  Container(
                    height: 50,
                    width: 390,
                    color: Colors.grey[300],
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Buy',style: TextStyle(color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Sale',style: TextStyle(color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,),),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Rent',style: TextStyle(color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,),),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Lease',style: TextStyle(color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,),),
                          ),
                        ),

                      ],
                    ),
                  ),
                  //search bar catagories container//

                  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top:30),
                      child: Container(
                        height: 42,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.camera,size: 25,color: Colors.black54),
                            SizedBox(
                                width: 220
                            ),
                            Icon(Icons.search,size: 30,color: Colors.black54,),
                          ],
                        ),
                      )

                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    child: Container(
                      height: 30,
                      width: 370,
                      child: Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        // color:Colors.green,
                      ),

                    ),
                  ),
                  Row(
                    children:
                    [
                      Padding(
                          padding: const EdgeInsets.only(left:10,right: 10,top: 20),
                          child: Container(
                            height: 135,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                GestureDetector(
                                  onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Viewmode()),
                          );
                          }, child:Image.asset('assets/c1.png',fit: BoxFit.fill,height: 105,),),


                              ],
                            ),
                          )

                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                          child: Container(
                            height: 105,
                            width: 120,
                            decoration: BoxDecoration(
                              // color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/c2.png',fit: BoxFit.contain, height:105,),
                              ],
                            ),
                          )

                      ),
                    ],
                  ),
                 */
/* Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 135,
                          width: 180,
                          color: Colors.cyan,
                          // decoration: const BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage("assets/xyz.jpg"),
                          //       fit: BoxFit.fill,
                          //     ),
                          //     //border: Border.all(width: 2, color: Colors.grey),
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(23.4),
                          //     )),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:10,top: 10),
                                child: Container(
                                  height: 20,
                                  width: 180,
                                  child: Text("priceNum",style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                  ) ,),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:10,top: 10),
                                child: Container(
                                  height: 20,
                                  width: 180,
                                  child: Text("priceNum",style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                  ) ,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:10,top: 10),
                                child: Container(
                                  height: 20,
                                  width: 180,
                                  child: Text("priceNum",style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                  ) ,),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:10,top: 10),
                                child: Container(
                                  height: 20,
                                  width: 180,
                                  child: Text("priceNum",style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                  ) ,),
                                ),
                              ),

                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Container(
                              //       height: 20,
                              //       width: 150,
                              //       child: const Text(
                              //         "Designation",
                              //         style: TextStyle(
                              //           fontSize: 20,
                              //           fontWeight: FontWeight.w900,
                              //           color: Colors.white,
                              //         ),
                              //       )),
                              // ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),*//*

                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                          child: Container(
                            height: 95,
                            width: 100,
                            decoration: BoxDecoration(
                              // color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/d1.png',fit: BoxFit.fill, height: 95),
                              ],
                            ),
                          )

                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                          child: Container(
                            height: 95,
                            width: 90,
                            decoration: BoxDecoration(
                              // color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/d2.png',fit: BoxFit.fill, height:95),
                              ],
                            ),
                          )

                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                          child: Container(
                            height: 95,
                            width: 90,
                            decoration: BoxDecoration(
                              // color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/d3.png',fit: BoxFit.fill, height: 95),
                              ],
                            ),
                          )

                      ),
                    ],
                  ),



                ],
              ),
            ),
          )
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

import '../Api/Uimode.dart';
import '../Coins_frame/Scrollview.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> categories = [
    "Real Estate",
    "Finance",
    "Business",
    "Job",
    "Auto Mobile",
    "Electronics",
  ];

  final Map<String, List<String>> categoryItems = {
    "Real Estate": ["Buy", "Sales", "Rent", "Lease"],
    "Finance": ["Loans", "Investments", "Chits","Insurance"],
    "Business": ["Business", "Services", ],
    "Job": ["Iwant a Job", "I want to hire People", "Vada"],
    "Auto Mobile": ["Two Wheeler", "Cars", "Commercial Vechicle"],
    "Electronics": ["Mobile & Accessories", "Computers & Accessories", "Home & Accessories",],
  };

  String selectedCategory = "Pizza";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiggy Header',
      home: Scaffold(

        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 33,
                    width: 120,
                    child:Image.asset('assets/truebroker.png',fit: BoxFit.fill,
                      height: 32,width: 102,),

                  ),
                ),


                const SizedBox(
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
                  child: Container(
                      height: 20,
                      width: 30,
                      child:const Center(
                        child: Text("True",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,),
                  child: Container(
                      height: 23,
                      width: 23,
                      child:GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Column(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(left: 10),
                                        height: 35,
                                        width: 190,
                                        child:  Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Image.asset('assets/truebroker.png',fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),

                                      const Center(
                                        child: Text('Total True Coin In your Account',style: TextStyle(color: Colors.indigo,fontSize: 16),

                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            height: 30,
                                            width: 490,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),color:Colors.grey,),
                                            child:Row(
                                              children: [
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:10),
                                                  child: Image.asset('assets/icon.png',fit: BoxFit.fill,
                                                    height: 20,width: 23,),
                                                ),
                                                const SizedBox(
                                                  width: 30,
                                                ),
                                                InkWell(
                                                  child: Center(child: Text('2000',style: TextStyle(color: Colors.indigo[900],fontSize: 18),)),
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),

                                              ],
                                            )
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      GestureDetector(
                                        child: RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'To Get Coin Ln Your Account ',
                                                style: TextStyle(color: Colors.indigo,fontSize: 13),
                                              ),
                                              TextSpan(
                                                text: 'CLICK HERE',
                                                style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700,fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),

                                        onTap: () {
                                          // do something
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => sp1()),
                                          );
                                        },
                                      ),
                                    ],
                                  ),



                                );
                              },
                            );
                          }, child:Image.asset('assets/icon.png',fit: BoxFit.fill,
                        height: 32,width: 23,)
                      )



                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(

                  padding: const EdgeInsets.only(top:20,left: 5),
                  child: Container(
                      height: 23,
                      width: 23,
                      child:GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 10),
                                      height: 35,
                                      width: 190,
                                      child:  Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Image.asset('assets/truebroker.png',fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    const Center(
                                      child: Text('Total True Coin In your Account',style: TextStyle(color: Colors.indigo,fontSize: 16),

                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 30,
                                          width: 490,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),color:Colors.grey,),
                                          child:Row(
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left:10),
                                                child: Image.asset('assets/icon.png',fit: BoxFit.fill,
                                                  height: 20,width: 23,),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              InkWell(
                                                child: Center(child: Text('2000',style: TextStyle(color: Colors.indigo[900],fontSize: 18),)),
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),

                                            ],
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      child: RichText(
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'To Get Coin Ln Your Account ',
                                              style: TextStyle(color: Colors.indigo,fontSize: 13),
                                            ),
                                            TextSpan(
                                              text: 'CLICK HERE',
                                              style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700,fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),

                                      onTap: () {
                                        // do something
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                ),



                              );
                            },
                          );
                        },child:  Image.asset('assets/Notify.png',fit: BoxFit.fill,
                        height: 32,width: 23,) ,
                      )








                  ),
                )],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      final category = categories[index];
                      final isSelected = selectedCategory == category;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                        child: Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: isSelected ? Colors.green : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child:

                            Text(
                              category,
                              style: TextStyle(

                                fontSize: 14,
                                color: isSelected ? Colors.white : Colors.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryItems[selectedCategory]?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final item = categoryItems[selectedCategory]?[index];

                  return Container(
                    width: 150,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        item ?? '',
                        style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top:30),
                child: Container(
                  height: 42,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.camera,size: 25,color: Colors.black54),
                      SizedBox(
                          width: 220
                      ),
                      Icon(Icons.search,size: 30,color: Colors.black54,),
                    ],
                  ),
                )

            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Container(
                height: 30,
                width: 370,
                child: Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // color:Colors.green,
                ),

              ),
            ),
            Row(
              children:
              [
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 20),
                    child: Container(
                      height: 135,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Viewmode()),
                              );
                            }, child:Image.asset('assets/c1.png',fit: BoxFit.fill,height: 105,),),


                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 10),
                    child: Container(
                      height: 105,
                      width: 120,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/c2.png',fit: BoxFit.contain, height:105,),
                        ],
                      ),
                    )

                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 95,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/d1.png',fit: BoxFit.fill, height: 95),
                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 95,
                      width: 90,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/d2.png',fit: BoxFit.fill, height:95),
                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 95,
                      width: 90,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/d3.png',fit: BoxFit.fill, height: 95),
                        ],
                      ),
                    )

                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

