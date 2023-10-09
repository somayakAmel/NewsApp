import 'package:flutter/material.dart';
import 'package:untitled2/models/category_model.dart';
import 'package:untitled2/screens/catedory_screen.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.category});
  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryScreen(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.categoryUrl)),
              borderRadius: BorderRadius.circular(16)),
          child: Container(
            color: Colors.white24,
            child: Center(
                child: Text(
              category.categoryName,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}
