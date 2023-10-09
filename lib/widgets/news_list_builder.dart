import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/news_list.dart';
import '../models/articles_model.dart';
import '../services/news_service.dart';

class NewsListBuilder extends StatefulWidget {
  final String category;

  const NewsListBuilder({super.key, required this.category});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio(), widget.category).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(articlesList: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Container(
                  height: 450,
                  width: 200,
                  child: const Center(
                      child: Text(
                    'Error in Loading data',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ))),
            );
          } else {
            return SliverToBoxAdapter(
              child: Container(
                  height: 450,
                  width: 200,
                  child: const Center(child: CircularProgressIndicator())),
            );
          }
        });
  }
}
