import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_buddy/Screens/verifyCodePage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailC = TextEditingController();
  TextEditingController PhoneNoC = TextEditingController();
var phone="";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 20),
              child: Image.asset("assets/images/rentIM.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 50),
              child: Container(
                height: 50,
                width: 270,
                child: TextField(
                  controller: emailC,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email Address",
                      fillColor: Colors.white60),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 10),
              child: Container(
                height: 50,
                width: 270,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value){
                    phone=value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Phone Number",
                      fillColor: Colors.white60),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 25),
              child: Container(
                child: TextButton (
                  onPressed: () async{
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {},
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );


                    //........... yaha if condition dalni h email and phone no. ke liye........


                    Get.to(VerificationCode());
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.shade700,
                    borderRadius: BorderRadius.circular(50),
               ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 13),
              child: Text(
                "Login with",
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 5),
                        child: Container(
                          child: Image.asset("assets/images/google.png"),
                          height: 30,
                          width: 78,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 5),
                        child: Container(
                          child: Image.asset("assets/images/facebook.webp"),
                          height: 30,
                          width: 78,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
