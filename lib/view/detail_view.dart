import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class DetailView extends StatefulWidget {
  String newsUrl;
 DetailView({Key? key,required this.newsUrl}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.newsUrl =  widget.newsUrl.contains("http:")?widget.newsUrl.replaceAll("http:","https:"):widget.newsUrl;
    });
  }
  final Completer<WebViewController> controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("LivePress",style: GoogleFonts.abrilFatface(fontSize: 30),),centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: WebView(
  initialUrl:widget.newsUrl,
  javascriptMode: JavascriptMode.unrestricted,
  onWebViewCreated: (WebViewController webViewController) {
      setState(() {
        controller.complete(webViewController);
      });
  },
      ),
    );
  }
}
