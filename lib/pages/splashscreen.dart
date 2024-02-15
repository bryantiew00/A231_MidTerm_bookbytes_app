import 'dart:async';
import 'package:bookbyte/pages/userloginpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();

}

class SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage())));
    }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center, 
              children: [
                Image.asset('assets/images/books.jpg'),  
              const Text(
              'Welcome to 3B BookBytes!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const CircularProgressIndicator(),
            const Text("Version 0.1 Beta")
          ],
        ),
      ),
      )
    );
  }
}