
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Dashboard/Bottomnavigation.dart';

import '../Profile_page/theme_change.dart';
class Profilview extends StatefulWidget {
  const Profilview({Key? key}) : super(key: key);

  @override
  State<Profilview> createState() => _ProfilviewState();
}

class _ProfilviewState extends State<Profilview> {


  void changeTheme(ThemeMode themeMode) {
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(
          builder:(context, ThemeModel themeNotifier, child){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
              home: Scaffold(

                  backgroundColor: Colors.green.shade500,
                  /*appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: Row(
        children: [
        IconButton(
        iconSize: 20,
        icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        ), onPressed: () {  },
      ),
          Text("Buy",style: TextStyle(fontSize: 18))
        ],)),*/

                  body: SingleChildScrollView(
                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              alignment: Alignment.topLeft,
                              height: 30,
                              width: 390,
                              child: IconButton(

                                  iconSize: 30,
                                  icon: const Icon(
                                    Icons.arrow_back_sharp,color: Colors.white,
                                  ),

                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const Laptop(),),
                                    );
                                  }
                              ),
                            ),
                          ),




                          /* GestureDetector(
            onTap: (){},child: Text("Buy",style: TextStyle(fontSize: 12),),
          ),*/Row(

                            children: [
                              Row(
                                children:  [
                                  Stack(
                                    children:  [
                                      const Padding(
                                        padding: EdgeInsets.only(left:10,top: 30),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://picsum.photos/id/237/200/300',),
                                          radius: 60,
                                        ),
                                      ),
                                      Positioned(child: IconButton(onPressed:(){} ,
                                          icon: Icon(Icons.add_a_photo_outlined,size: 23,)),
                                      bottom:-15,
                                      left:95)

                                    ],
                                  )],
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    child: Column(
                                      children: [
                                        const SizedBox(height:30),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Container(
                                              child: const Text(
                                                "Name",style: TextStyle(color: Colors.white),

                                              )),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left:20,top: 20),
                                          child: Text("Email",style: TextStyle(color: Colors.white),
                                          ),
                                        ) ],
                                    ),
                                  )
                                ],
                              ),


                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "Your Product",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(onPressed: () {}, icon: Icon(Icons.add_reaction,color: Colors.white,)),

                                ),



                              )),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "Wish List",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(onPressed: () {}, icon: Icon(Icons.playlist_add_sharp,color: Colors.white,)),

                                ),



                              )),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "About",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.white,)),

                                ),



                              )),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "Language",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(onPressed: () {}, icon:
                                  Icon(Icons.language_rounded,color: Colors.white,)),

                                ),



                              )),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "Theme",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(
                                      onPressed: () {
                                        themeNotifier.isDark
                                            ? themeNotifier.isDark = false
                                            : themeNotifier.isDark = true;
                                      },
                                      icon: Icon(themeNotifier.isDark
                                          ? Icons.nightlight_round
                                          : Icons.wb_sunny)),

                                ),



                              )),
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  labelText: "Logout",labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                  prefixIcon:
                                  IconButton(onPressed: () {}, icon:
                                  Icon(Icons.mobile_friendly_rounded,color: Colors.white,)),

                                ),



                              )
                          ),
                  ])

              ),
                  ));


          }
      ),
    );




  }
}
