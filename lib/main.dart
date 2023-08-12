import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';
import 'package:news_app/view/widgets/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool showingSplash = true;
  LoadHome() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        showingSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Newzeria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:(showingSplash)? Splash():HomeScreen(),
    );
  }
}

