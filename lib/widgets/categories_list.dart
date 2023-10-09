import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'Category_Card.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'Sports', categoryUrl: 'assets/images/sport.jpg'),
    CategoryModel(
        categoryName: 'General', categoryUrl: 'assets/images/general.jpg'),
    CategoryModel(
        categoryName: 'Health', categoryUrl: 'assets/images/health.jpg'),
    CategoryModel(
        categoryName: 'Science', categoryUrl: 'assets/images/science.jpg'),
    CategoryModel(
        categoryName: 'Technology',
        categoryUrl: 'assets/images/technology.jpg'),
    CategoryModel(
        categoryName: 'Entertainment',
        categoryUrl: 'assets/images/entertainment.webp'),
    CategoryModel(
        categoryName: 'Business', categoryUrl: 'assets/images/business.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
