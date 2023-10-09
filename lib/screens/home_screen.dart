import 'package:flutter/material.dart';
import 'package:untitled2/widgets/categories_list.dart';
import 'package:untitled2/widgets/news_list_builder.dart';

class NewsHome extends StatelessWidget {
  const NewsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'News ',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(fontSize: 20, color: Colors.yellow[400]),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesList(),
              ),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 15,
              )),
              NewsListBuilder(
                category: 'general',
              )
            ],
          )),
    );
  }
}
