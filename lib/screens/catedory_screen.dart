import 'package:flutter/material.dart';
import 'package:untitled2/widgets/news_list_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category ?? '',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              ' News',
              style: TextStyle(fontSize: 20, color: Colors.yellow[400]),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(
              category: category,
            )
          ],
        ),
      ),
    );
  }
}
