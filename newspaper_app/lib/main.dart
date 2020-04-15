import 'package:flutter/material.dart';
import 'package:newspaperapp/screens/ListOfAritcle.dart';
import 'ArticleModel.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  List<ArticleModel> articles = [
    ArticleModel("ABC", "That the quick brown fox jumping"),
    ArticleModel("DEF", "over the lazy sluggish dog"),
    ArticleModel("GHI", "That the quick brown fox jumping"),
    ArticleModel("JKL", "over the lazy sluggish dog"),
    ArticleModel("MNO", "That the quick brown fox jumping"),
    ArticleModel("PQR", "over the lazy sluggish dog"),
    ArticleModel("STU", "That the quick brown fox jumping"),
    ArticleModel("VWX", "over the lazy sluggish dog"),
    ArticleModel("YZ", "That the quick brown fox jumping"),
    ArticleModel("ABC", "over the lazy sluggish dog"),
    ArticleModel("DEF", "That the quick brown fox jumping"),
    ArticleModel("GHI", "over the lazy sluggish dog"),
    ArticleModel("JKL", "over the lazy sluggish dog"),
    ArticleModel("MNO", "That the quick brown fox jumping"),
    ArticleModel("PQR", "over the lazy sluggish dog"),
    ArticleModel("STU", "That the quick brown fox jumping"),
    ArticleModel("VWX", "over the lazy sluggish dog"),
    ArticleModel("YZ", "That the quick brown fox jumping")
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  Scaffold(
        body: ListOfArticle(articles),
        appBar: AppBar(
          title: Text("Newspaper Application"),
        ),
      )
    );
  }
}