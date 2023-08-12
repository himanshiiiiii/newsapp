//whatever we have to give to frontend we write in this
//data model


class NewsArticle{
  String imgUrl;
  String newshead;
  String newsDes;
  String newsCont;
  String newUrl;

  NewsArticle({
    required this.imgUrl,
    required this.newshead,
    required this.newsDes,
    required this.newsCont,
    required this.newUrl,
});



//this method packs API in a good manner
  static NewsArticle fromAPItoApp(Map<String,dynamic>article){

    return NewsArticle(
        imgUrl: article["urlToImage"] ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHtroXv8mhi3E6pgYCwAhTewN_yT9xn4Mmdw&usqp=CAU" ,
        newshead: article["title"] ?? "--",
        newsDes: article["description"] ?? "--",
        newsCont: article["content"] ?? "--",
        newUrl: article["url"]??"https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
    );
  }
}

