import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
class Reg_login extends StatefulWidget {
  const Reg_login({Key? key}) : super(key: key);

  @override
  State<Reg_login> createState() => _Reg_loginState();
}

class _Reg_loginState extends State<Reg_login> {
  bool passwordVisible=false;
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController FirstNameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController ConfirmPasswordController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController PincodeController=TextEditingController();
  TextEditingController PhonenumberController=TextEditingController();


  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6ae792),
        title: Center(child: Text("Register",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
          child:Form(
            key: _formkey,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("First Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: TextFormField(
                      controller: FirstNameController,
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      }, keyboardType: TextInputType.text,
                      decoration:InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "First Name"
                      ),
                      validator: (value){
                        print(value);
                        if(value!.isEmpty){
                          return "Please Enter Name";
                        }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                        {
                          return "Please Enter Valid Name";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Last Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child:  TextFormField(
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      },
                      keyboardType: TextInputType.text,
                      controller:LastNameController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Last Name"
                      ),
                      validator: (value){
                        print(value);
                        if(value!.isEmpty){
                          return "Please Enter Name";
                        }else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                        {
                          return "Please Enter  Valid Name";
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: Container(
                    child:  TextFormField(
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      },
                      keyboardType: TextInputType.text,
                      controller:EmailController ,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email"
                      ), validator: (value){
                      print(value);
                      if(value!.isEmpty){
                        return "Please Enter Email";
                      }else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value))
                      {
                        return "Please Enter Valid Email";
                      }
                      return null;
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Enter phone Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: Container(
                    alignment: Alignment.center,
                    child:  IntlPhoneField(
                        controller: PhonenumberController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: "IN",
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        }  ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: Container(

                    child:  TextFormField(
                      obscureText: passwordVisible,
                      controller:   PasswordController,
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off_outlined),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        //   alignLabelWithHint: false,
                        //   filled: true,
                      ),

                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      validator: (value){
                        print(value);
                        if(value!.isEmpty){
                          return "Please Enter Password";
                        }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                        {
                          return "Please Enter Valid Password";
                        }
                        return null;
                      },

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(

                    child:  TextFormField(

                      onChanged: (val){
                        _formkey.currentState?.validate();
                      },
                      keyboardType: TextInputType.text,
                      controller: ConfirmPasswordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Confirm Password",

                      ),
                      validator: (value){
                        print(value);
                        if(value!.isEmpty){
                          return "Please Enter Confirm Password";
                        }else if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value))
                        {
                          return "Please Enter  Confirm Password";
                        }
                        return null;},),),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("City",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child:  TextFormField(
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      }, keyboardType: TextInputType.text,
                      controller: cityController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "City"

                      ),
                      // validator: (value){
                      //   print(value);
                      //
                      //   {
                      //     return "Please Enter  Valid City";
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Container(
                    height: 20,
                    width: 390,
                    child: Text("Pincode",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child:  TextFormField(
                      onChanged: (val){
                        _formkey.currentState?.validate();
                      }, keyboardType: TextInputType.text,
                      controller: PincodeController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Pincode"),
                      // validator: (value){
                      //   print(value);
                      //
                      //   {
                      //     return "Please Enter  Valid Pincode";
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 40,right: 30),
                  child: Container(
                    height: 40,
                    width: 390,
                    child: ElevatedButton(style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1B5E20),),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              /*side: BorderSide(color: Colors.red)*/
                            )
                        )
                    ),onPressed: (){
                      register( FirstNameController.text.toString(),
                        LastNameController.text.toString(),
                        PhonenumberController.text.toString(),
                        EmailController.text.toString(),
                        cityController.text.toString(),
                        PasswordController.text.toString(),


                      );
                    }, child: Text("Submit",)),
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: GestureDetector(
                          onTap: () {},

                          child:  Container(
                              child:Text(" You agree to truebroker's ?",
                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
                          )

                      ),
                    ),
                    Text("Terms and conditions",
                      style: TextStyle(color: Colors.green.shade700,fontSize: 12,fontWeight: FontWeight.bold),)

                  ],
                )
              ],
            ),
          )



      ),
    );
  }

  void register(String FirstName,LastName,Pincode,PhoneNumber,city,Password,) async {
    try {
      Response response = await post(Uri.parse("https://truebroker.in/web/api/mobile/true_index.php"),
          body: {
            "f_name" :FirstName,
            // 'l_name': LastNameController.text,
            // 'pin_code': PincodeController.text,
          }
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print(data['error']);
        print("Created sucessfully");
      }else{
        print("failed");
      }
    }
    catch (e) {
      print(e.toString());
    }
  }

}
InputDecoration buildInputDecoration(IconData icons,String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    // prefixIcon: Icon(icons),
    focusedBorder: const OutlineInputBorder(
      // borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
          color: Colors.green,
          width: 1.5
      ),
    ),
    border: const OutlineInputBorder(
      // borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder:const OutlineInputBorder(
      // borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}

