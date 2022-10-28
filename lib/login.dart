// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_Page extends StatelessWidget {
  const Login_Page([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simba Money', style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.amberAccent,
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          children: [
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 100, 0, 0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'images/logo_after.png',
                    height: 80,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
              child: TextField(
                decoration: InputDecoration(
                  // labelText: 'Email',
                  prefixIcon: Icon(Icons.mail_outline_rounded,
                      color: Colors.amberAccent),

                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 2.0),
                  ),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.amberAccent),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key, color: Colors.amberAccent),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amberAccent, width: 2.0),
                  ),
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(color: Colors.amberAccent),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 30, right: 20, top: 13),
              child: GestureDetector(
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () => {},
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(left: 20, right: 30, top: 0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  side: const BorderSide(width: 1.0, color: Colors.amberAccent),
                  backgroundColor: Colors.amberAccent,
                  onPrimary: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
