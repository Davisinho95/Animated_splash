// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: camel_case_types
class singup_page extends StatelessWidget {


   singup_page([Key? key]) : super(key: key);

  String email='';
  String password='';
  String name='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simba Money',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amberAccent,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
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
                    'SingUp',
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
              padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
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
                  hintText: 'Enter your Name',
                  hintStyle: TextStyle(color: Colors.amberAccent),
                ),
                onChanged:(value){
                  _name= value;
                },
                style: TextStyle(color: Colors.white),
              ),
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
                onChanged:(value){
                  _email= value;
                },
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
                  hintText: 'Create your Password',
                  hintStyle: TextStyle(color: Colors.amberAccent),
                ),
                onChanged: value(){};
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 30, right: 20, top: 13),
              child: GestureDetector(
                child: const Text(
                  'Have an acount?',
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
                icon: const Icon(Icons.login_outlined),
                label: const Text("Sign up"),
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
