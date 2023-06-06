import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 1,
      child: Scaffold(

          body: Align(
            alignment: Alignment.centerLeft,
            child:Column(

              children:  [


                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Enter phone number"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15,right: 10),
                  child: Container(
                    height: 80,
                    width: 390,
                    child:  IntlPhoneField(
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),


                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15,right: 10),
                  child: Container(
                    height: 40,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                    child:ElevatedButton(
                        child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 16,letterSpacing: 0,)
                        ),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1B5E20),),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  /*side: BorderSide(color: Colors.red)*/
                                )
                            )
                        ),
                        onPressed: () {}
                    ),



                  ),
                ),
                // SizedBox(
                //   height: 40,
                // ),
                // Row(
                //   children: [
                //     const Padding(
                //       padding: EdgeInsets.only(left: 10),
                //       child: Text("Create account"),
                //     ),
                //     const SizedBox(
                //       width: 90,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 5),
                //       child: GestureDetector(
                //           onTap: () {},
                //
                //           child:  Container(
                //               child:Text(" Forgot Password ?",
                //                 style: TextStyle(fontSize: 14),)
                //           )
                //
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 40,
                // ),
                // Row(children: <Widget>[
                //   Expanded(
                //     child: new Container(
                //         margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                //         child: Divider(
                //           color: Colors.black,
                //           height: 36,
                //         )),
                //   ),
                //   Text(" or conact using "),
                //   Expanded(
                //     child: new Container(
                //         margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                //         child: Divider(
                //           color: Colors.black,
                //           height: 36,
                //         )),
                //   ),
                // ]),
                // Row(
                //   children: <Widget>[
                //
                //     Padding(
                //       padding: const EdgeInsets.only(left: 10),
                //       child: Container(
                //         height: 60,
                //         width: 60,
                //         child: Image(
                //           image: AssetImage(
                //             'assets/a1.png',
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(10),
                //       child: Container(
                //         height: 60,
                //         width: 60,
                //         child: Image(
                //           image: AssetImage(
                //             'assets/a3.png',
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(10),
                //       child: Container(
                //         height: 65,
                //         width: 65,
                //         child: Image(
                //           image: AssetImage(
                //             'assets/f1.png',
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 5),
                //       child: Container(
                //         height: 60,
                //         width: 60,
                //         child: Image(
                //           image: AssetImage(
                //             'assets/phone1.jpg',
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //     // Image.asset
                //   ], //<Widget>[]
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 20),
                //       child: GestureDetector(
                //           onTap: () {},
                //
                //           child:  Container(
                //               child:Text(" You agree to truebroker's ?",
                //                 style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                //           )
                //
                //       ),
                //     ),
                //     Text("Terms and conditions",
                //       style: TextStyle(color: Colors.green.shade700,fontSize: 12,fontWeight: FontWeight.bold),)
                //
                //   ],
                // )












              ],

            ),
          )

      ),

    );
  }
}
