import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/view/detail_view.dart';
import 'package:news_app/view/widgets/notification.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCont;
   NewsContainer({Key?key,required this.imgUrl,required this.newsDes,required this.newsHead,required this.newsUrl,required this.newsCont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LivePress",style: GoogleFonts.abrilFatface(fontSize: 30),),
          backgroundColor: Colors.teal,
          centerTitle: true,
          actions: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> Notification()));
              },
              icon: Icon(Icons.notifications,color: Colors.white,),
              label:Text(""),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              DrawerHeader (
                padding: EdgeInsets.all(0.0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color:Color(0xff006A4E),
                  ),
                  accountName: Text(
                    "Himanshi Tripathi",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "himanshitripathi14@gmail.com",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      color: Colors.white,
                    ),
                  ),
                  currentAccountPictureSize: Size.square(70),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage:AssetImage("assets/livepress.jpeg",),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.my_library_books_rounded),
                title: Text(' FAQs'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text(' About Us'),
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text(' Contact Us '),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(45.0,300.0,40.0,20.0),
                  child: Text (
                    'Made By Himanshi Tripathi...',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Mulish',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      body:SafeArea(

      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
FadeInImage.assetNetwork(fit:BoxFit.cover,height:MediaQuery.of(context).size.height/2.3,width: MediaQuery.of(context).size.width,placeholder:"assets/default.jpg" , image:imgUrl),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 10,),
                Text(newsHead,style: TextStyle(fontSize:(newsHead.length>18)? 20:25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text(newsDes,style: TextStyle(fontSize:(newsDes.length>120)? 14:18,color:Colors.black87,fontWeight: FontWeight.w600 ),),
                SizedBox(height: 10,),
                Text((newsCont != "--")?(newsCont.length>250)?newsCont.substring(0,250):"${newsCont.toString().substring(0,newsCont.length-15)}.....":newsCont,style: TextStyle(fontSize: (newsDes.length>150)?12:15,color:Colors.black54,fontWeight: FontWeight.w500 ),),

              ],),),
            ),

Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailView(newsUrl: newsUrl,)),);
                  },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff013220)),
          child: Text("Read More")),
                ),
              ],
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
      )
    );
  }
}
