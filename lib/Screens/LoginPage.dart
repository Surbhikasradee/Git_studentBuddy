import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'HomePage.dart';
import 'RegisteredPage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Image.asset("assets/images/rentIM.png",),
            Padding(
              padding: const EdgeInsets.only(left:10,top: 50),
              child: Container(
                height: 50,
                width: 280,
                child: TextField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'username',
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Container(
                height: 50,
                width: 280,
                child: TextField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 50),
              child: Container(
                child: TextButton(onPressed: () {
                  Get.to(HomePage());
                },
                  child: Text("Login",style: TextStyle(color: Colors.white),),),
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.shade700,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 255,
              top: 120),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextButton(onPressed: () { Get.to(RegisterPage()); },
                  child: Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.white),),)
                ),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade700,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft:  Radius.circular(50))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
