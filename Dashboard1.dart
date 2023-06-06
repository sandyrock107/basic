import 'package:flutter/material.dart';



class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // final List<String> names = <String>['Buy', 'Sale', 'Rent', 'Lease',  ];

  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize( //wrap with PreferredSize
          preferredSize: Size.fromHeight(250), //height of appbar
          child: AppBar(
            backgroundColor: Colors.white,

             title: Column(
               children:  [
                 Padding(
                   padding: const EdgeInsets.only(top: 20,left: 10),
                   child: Row(
                     children: [
                       Image.asset("truebroker.png",fit: BoxFit.contain, height: 32),
                     ],


                   ),
                 ),


                 Row(
                   children: [
                     Container(
                       height: 30,
                       width: 290,
                       child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: 5,
                           itemBuilder: (BuildContext context, index){

                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 30,
                               width: 10,
                               color: Colors.cyanAccent,
                             ),
                           );
                           }
                     ))

                   ],
                 )
               ],


             ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 35,
                  child:Center(
                    child: Text("True",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                  )
                ),
              ),
              Container(
                height: 20,
                width: 20,
                child:Image.asset("icon.png",fit: BoxFit.contain,
                  height: 32,),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 20,
                  child:Image.asset("Notify.png",fit: BoxFit.contain,
                    height: 32,) ,
                ),
              )

              ,

              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.notifications_active_rounded,color: Colors.black,),
              // ),
            ],

            //appbar background color
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left:0,top: 5),
                  child: Image.asset("truebroker.png",fit: BoxFit.contain, height: 35),
                ),
                const SizedBox(
                  width: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
                  child: Container(
                      height: 20,
                      width: 35,
                      child:Center(
                        child: Text("True",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5,),
                  child: Container(
                    height: 23,
                    width: 23,
                    child:Image.asset("icon.png",fit: BoxFit.contain,
                      height: 32,),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:5,left: 5),
                  child: Container(
                    height: 23,
                    width: 23,
                    child:Image.asset("Notify.png",fit: BoxFit.contain,
                      height: 32,) ,
                  ),
                )],
            ),
            const SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sandy2.length,
                  // itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        child:  Center(
                          child: ElevatedButton(
                              child:Text(
                            sandy2[index].text,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),  onPressed: () {  },
                          )

                        ),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                           color:Colors.green,
                        ),
                        // decoration: BoxDecoration(
                        //     // image: DecorationImage(
                        //     //   image: AssetImage(sandy2[index].image),
                        //     //   fit: BoxFit.fill,
                        //     // ),
                        //     borderRadius: BorderRadius.all(
                        //       Radius.circular(5.0),
                        //     )),
                      ),
                    );

                  }),
              //color: Colors.black54,
            ),

            Padding(
              padding: const EdgeInsets.only(left:10,top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 30),
                    child: Container(
                      height: 35,
                      width: 170,
                      child: Center(child: Text("Real estate")),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:Colors.green,
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 30),
                    child: Container(
                      height: 35,
                      width: 170,
                      child: Center(child: Text("Real estate")),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:Colors.green,
                      ),

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.only(left:10,right: 10),
              child: Divider(
                color: Colors.black45,
                height: 25,
                thickness: 0,
                indent: 2,
                endIndent: 2,

              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top:20),
                child: Container(
                  height: 42,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.camera,size: 25,color: Colors.black54),
                      SizedBox(
                          width: 220
                      ),
                      Icon(Icons.search,size: 30,color: Colors.black54,),
                    ],
                  ),
                )

            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Container(
                height: 20,
                width: 370,
                child: Text("Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // color:Colors.green,
                ),

              ),
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 105,
                      width: 200,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("c1.png",fit: BoxFit.fill,height: 105,width: 200,),
                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("c2.png",fit: BoxFit.contain, height:105,width: 150,),
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
                      height: 105,
                      width: 110,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("d1.png",fit: BoxFit.fill, height: 105,width: 110,),
                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 105,
                      width: 110,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("d2.png",fit: BoxFit.fill, height: 105,width: 110,),
                        ],
                      ),
                    )

                ),
                Padding(
                    padding: const EdgeInsets.only(left:10,right: 10,top: 30),
                    child: Container(
                      height: 105,
                      width: 110,
                      decoration: BoxDecoration(
                        // color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("d3.png",fit: BoxFit.fill, height: 105,width: 110,),
                        ],
                      ),
                    )

                ),
              ],
            ),
            /*Column(
            children: [
               Scrollbar(
                  isAlwaysShown: true, //always show scrollbar
                  thickness: 10,
                  child: Container(
                    height: 50,
                    width: 390,
                    child:ListView.builder(
                       scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            width: 200,
                           decoration: const BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                             color:Colors.green,
                           ),
                            child: Center(
                                child: Text('${names[index]} ',
                                  style: TextStyle(fontSize: 18),
                                )
                            ),
                          );
                        }
                    )
                  ),
                ),*/

    ],
    ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(25.0),
            //       child: Container(
            //         height: 45,
            //         width: 340,
            //         color: Colors.grey[300],
            //         child: Scrollbar(
            //           isAlwaysShown: true,
            //           controller: scrollController,
            //           thickness: 20,
            //           radius: Radius.circular(20),
            //           scrollbarOrientation: ScrollbarOrientation.left,
            //           child:Row(
            //           children: const [
            //
            //             Padding(
            //               padding: EdgeInsets.only(left:25),
            //               child: Text("Buy",style: TextStyle(color: Colors.green,
            //                   fontWeight: FontWeight.w600,
            //               fontSize: 18,)),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(left:45,),
            //               child: Text("Sale",style: TextStyle(color: Colors.green,
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 18)),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(left:45,),
            //               child: Text("Rent",style: TextStyle(color: Colors.green,
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 18)),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.only(left:45,),
            //               child: Text("Lease",style: TextStyle(color: Colors.green,
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 18)),
            //             ),
            //
            //
            //
            //           ],
            //         ),
            //         )
            //
            //       ),
            //     )],
            // ),

       ));


  }
}
class Abc1 {
  String? text;
  String?Elivationbutton;
  Abc1(this.text,this.Elivationbutton);

}
List sandy2 = moduleData1.map((e) => Abc1(e["text"],e["Elivationbutton"])).toList();

var moduleData1 = [
  {'text': 'Real estate','Elivationbutton':'(){}'},
  {'text': 'Loan','Elivationbutton':'(){}'},
  {'text': 'Business','Elivationbutton':'(){}'},
  {'text': 'Lease','Elivationbutton':'(){}'},

];