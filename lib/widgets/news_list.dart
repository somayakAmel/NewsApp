import 'package:flutter/material.dart';

import '../models/articles_model.dart';
import 'news_tile.dart';

class NewsList extends StatelessWidget {
  final List<ArticlesModel> articlesList;
  const NewsList({super.key, required this.articlesList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articlesList.length,
            (context, index) {
      return NewsTile(
        articlesModel: articlesList[index],
      );
    }));
  }
}
