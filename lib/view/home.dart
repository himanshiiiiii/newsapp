import 'package:flutter/material.dart';
import 'package:news_app/controller/fetchNews.dart';
import 'package:news_app/model/newartticle.dart';
import 'package:news_app/view/widgets/newscontainer.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool isLoading = true;
 late NewsArticle newsarticle;

 GetNews() async{

 newsarticle= await FetchNews.fetchnews();
 setState(() {
   isLoading=false;
 });

}

  @override
  void initState() {
    GetNews();
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(

            controller:  PageController(initialPage:0),
            scrollDirection: Axis.vertical,
            onPageChanged: (value){
              setState(() {
                isLoading=true;
              });
              GetNews();
            },
            itemBuilder: (context,index){

return (isLoading)?Center(child: CircularProgressIndicator(),): NewsContainer(
  imgUrl:newsarticle.imgUrl,
      newsCont: newsarticle.newsCont,
      newsHead:newsarticle.newshead, newsUrl:newsarticle.newUrl,newsDes: newsarticle.newsDes,);
        }),
      ),
    );
  }
}
