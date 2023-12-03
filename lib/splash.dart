import 'package:flutter/material.dart';
import 'package:new_project/main.dart';

import 'main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _naigateToHome();
  }

  _naigateToHome() async {

    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Main()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage('king.png'),
              radius: 80,
            ), 
            Padding(padding: EdgeInsets.all(15), 
            child: Text("ده تا از اصحاب کرام ",

            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red,

            ),
            ),
            ),

            CircularProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.red,

            )
          ],
        ),
      )
    );
  }
}
