//https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=ae29fdcda27649c9b4101c87f7113ee6

import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:news_app/model/newartticle.dart';



class FetchNews{
 static List sources = ["abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArticle> fetchnews() async{
// var randomItem=(sources..shuffle()).first;
  final _random = new Random();
  var sourceId = sources[_random.nextInt(sources.length)];
print(sourceId);
Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=ae29fdcda27649c9b4101c87f7113ee6"));
Map body_data= jsonDecode(response.body);
List articles = body_data["articles"];
// print(articles);
  final _newrandom = new Random();
  var myArticle = articles[_random.nextInt(articles.length)];

  print(myArticle);

  return NewsArticle.fromAPItoApp(myArticle);
  }
}