import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/view/widgets/newscontainer.dart';

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LivePress",style: GoogleFonts.abrilFatface(fontSize: 30),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Center(
        child: Text (
          "No Notification",
          style: TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
