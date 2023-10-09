import 'package:dio/dio.dart';
import 'package:untitled2/models/articles_model.dart';

class NewsService {
  final String category;
  final Dio dio;
  NewsService(this.dio, this.category);

  Future<List<ArticlesModel>> getNews() async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=df8492b61c42446c8035a30273cc13e3&category=$category");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articleModel = ArticlesModel.fromJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
