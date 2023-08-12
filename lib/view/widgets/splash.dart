import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';
import 'package:lottie/lottie.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200.0,
          ),
          Center(
            child: Container(
              child: LottieBuilder.asset('lottie/splashscreen.json'),
            ),
          ),
          Text(
            "Bringing you the latest news",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
