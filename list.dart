import 'package:flutter/material.dart';
class Viewlist extends StatefulWidget {
  const Viewlist({Key? key}) : super(key: key);

  @override
  State<Viewlist> createState() => _ViewlistState();
}

class _ViewlistState extends State<Viewlist> {
  @override
  Widget build(BuildContext context) {
    final Future<String> _countDown = Future<String>.delayed(
      const Duration(seconds: 5),
          () => 'Data Loaded',
    );
    return  Scaffold(
       body:FutureBuilder(
         future: _countDown,

        builder: (context, snapshot) {
      // Checking if future is resolved
      if (snapshot.connectionState == ConnectionState.done) {
        // If we got an error
        if (snapshot.hasError) {
          return Center(
            child: Text(
              '${snapshot.error} occurred',
              style: TextStyle(fontSize: 18),
            ),
          );

          // if we got our data
        } else if (snapshot.hasData) {
          // Extracting data from snapshot object
          final data = snapshot.data as String;
          return Center(
            child: Text(
              '$data',
              style: TextStyle(fontSize: 18),
            ),
          );
        }}
       return CircularProgressIndicator();

        }


     ),


    /* Container(
    //color: Colors.cyanAccent,
    child: FutureBuilder<List<Bank>>(
        future: FetchBank(),
    builder: (context, projectSnap) {
    if (projectSnap.hasData) {
    return ListView.builder(
    itemCount: projectSnap.data!.length,
    itemBuilder: (context, index) {
    Bank project = projectSnap.data![index];
    return Card(
    color: Colors.grey,
    child: Row(children: [
    GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {},
    child: Column(
    children: [
    // Text(projectSnap.data![index].branch.toString()),
    // Text(
    //     projectSnap.data![index].ifsccode.toString()),
    // Text(projectSnap.data![index].accno.toString()),
    // Text(projectSnap.data![index].accounttype
    //     .toString()),
    Container(
    height: 40,
    width: 200,
    //color: Colors.cyanAccent,
    child: const Center(
    child: Text(
    "Bank information",
    style: TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    SizedBox(
    height: 30,
    ),
    Row(
    children: [
    Container(
    margin: EdgeInsets.only(left: 2),
    height: 30,
    width: 350,
    //color: Colors.cyanAccent,
    child: const Text(
    "Bank Name",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500),
    ),
    ),
    ],
    ),

    Container(
    height: 30,
    width: 350,
    //color: Colors.cyan,
    margin: EdgeInsets.only(left: 2),

    child: Text(
    projectSnap.data![index].f_name
        .toString(),
    style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
    //backgroundColor: Colors.cyanAccent),
    )),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    height: 30,
    width: 350,
    margin: EdgeInsets.only(left: 2),
    //color: Colors.cyanAccent,
    child: const Text(
    "Branch",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500),
    ),
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyan,
    margin: EdgeInsets.only(left: 2),

    child: Text(
    projectSnap.data![index].user_id
        .toString(),
    style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
    //backgroundColor: Colors.cyanAccent),
    )),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyanAccent,
    margin: EdgeInsets.only(left: 2),
    child: const Text(
    "Ifsccode",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500),
    ),
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyan,
    margin: EdgeInsets.only(left: 2),

    child: Text(
    projectSnap.data![index].mobile
        .toString(),
    style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
    //backgroundColor: Colors.cyanAccent),
    )),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyanAccent,
    margin: EdgeInsets.only(left: 2),
    child: const Text(
    "Acc NO",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500),
    ),
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyan,
    margin: EdgeInsets.only(left: 2),

    child: Text(
    projectSnap.data![index].city
        .toString(),
    style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
    //backgroundColor: Colors.cyanAccent),
    )),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyanAccent,
    margin: EdgeInsets.only(left: 2),
    child: const Text(
    "Accounttype",
    style: TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500),
    ),
    ),
    Container(
    height: 30,
    width: 350,
    //color: Colors.cyan,
    margin: EdgeInsets.only(left: 2),

    child: Text(
    projectSnap.data![index].route_id
        .toString(),
    style: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500
    //backgroundColor: Colors.cyanAccent),
    )),
    ),
    const SizedBox(
    height: 20,
    ),
    ],
    )),
    ]));
    },
    );
    }
    return CircularProgressIndicator();
    },
    ),
    )*/
    );

  }


}
