import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../Dashboard/Bottomnavigation.dart';
import 'Regsister.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
  // static Future init() async {
  //   localStorage = await SharedPreferences.getInstance();
  }




  // late SharedPreferences localStorage;
TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();





class _EmailState extends State<Email> {


  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 1,
      child: Scaffold(
          body: Align(
            alignment: Alignment.centerLeft,
            child:Column(

              children:  [

                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Container(
                    height: 15,
                    width: 390,
                    child: Text("Email"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15,right: 10),
                  child: Container(
                    height: 70,
                    width: 390,
                    child: TextField(
                    controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',

                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 0),
                  child: Container(
                    height: 15,
                    width: 390,
                    child: Text("Password"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15,right: 10),
                  child: Container(
                    height: 70,
                    width: 390,

                    child:  TextField(
                      controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(

                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_sharp,
                              color: Colors.green,)
                        )


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15,right: 10),
                  child: Container(
                    height: 40,
                    width: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                    ),

                    child:ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Laptop()),
                          );


                        },
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
                        child: const Text(
                            "Sign in",
                            style: TextStyle(fontSize: 14,letterSpacing: 1,)
                        ),


                    ),
                  ),
                ),
                // if (localStorage != null)
                //   Padding(
                //     padding: const EdgeInsets.all(15.0),
                //     child: Text("User Logged in!!! ->  Email Id: ${localStorage.get('email')} "
                //         " Password: ${localStorage.get('password')}",style: TextStyle(fontSize: 20),),
                //   ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                          onTap:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Reg_login()),
                            );

                          },child:const Text("Create account")
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: GestureDetector(
                          onTap: () {

                          },

                          child:  Container(
                              child:const Text(" Forgot Password ?",
                                style: TextStyle(fontSize: 14),)
                          )

                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                   const Text(" or conact using "),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        _googleSignIn.signIn().then((value)  {
                          String userName =value.displayName;
                          String email =value.email;
                          print(userName);
                          print(email);
                        });
                      }, child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Image(
                          image: AssetImage(
                            'assets/a1.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Image(
                          image: AssetImage(
                            'assets/a3.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 65,
                        width: 65,
                        child: Image(
                          image: AssetImage(
                            'assets/f1.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        height: 60,
                        width: 60,
                        child: const Image(
                          image: AssetImage(
                            'assets/phone1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Image.asset
                  ], //<Widget>[]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                          onTap: () {},

                          child:  Container(
                              child:Text(" You agree to truebroker's ?",
                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                          )

                      ),
                    ),
                    Text("Terms and conditions",
                      style: TextStyle(color: Colors.green.shade700,fontSize:12,fontWeight: FontWeight.bold),)

                  ],
                )],

            ),
          )

      ),

    );
  }
}
// save() async {
//   await Email.init();
//   localStorage.setString('email', emailController.text.toString());
//   localStorage.setString('password', passwordController.text.toString());
//
// }