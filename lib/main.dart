// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash/signup.dart';
import 'package:animated_splash/login.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // splash: Lottie.asset('images/loading-cicles.json'),
      splash: Column(
        children: [
          Expanded(
            child: Image.asset(
              'images/logo.png',
              height: 180,
              width: 180,
            ),
          ),
          const Text(
            'Simba Money',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const Home(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

class Home extends StatelessWidget {
  const Home([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'images/logo_after.png',
                    height: 140,
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              // padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Welcome to ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: AutofillHints.middleInitial),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, bottom: 17),
              child: const Text(
                'Simba money ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.middleInitial),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20),
              child: const Text(
                'Instant, Money Transfer System , Allowing User To Receive Money From Across The Globe ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.middleInitial),
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 1, 20, 5),
                    child: ElevatedButton(
                      onPressed: () {
                        MaterialPageRoute(builder: (context) => singup_page());
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login_Page()),
                        );
                      },
                      // ignore: sort_child_properties_last
                      child: Text('I have an account'),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          width: 2.0,
                          color: Colors.amberAccent,
                        ),
                        primary: Color.fromARGB(0, 59, 0, 0),
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.2),
                            side: BorderSide(color: Colors.red))),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 5),
                    child: ElevatedButton(
                      onPressed: () {
                        MaterialPageRoute(builder: (context) => singup_page());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => singup_page()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          width: 2.0,
                          color: Colors.amberAccent,
                        ),
                        primary: Color.fromARGB(0, 59, 0, 0),
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: (RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.2),
                          side: BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      child: Text('Open free account'),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
