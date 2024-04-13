import 'package:flutter/material.dart';

import 'package:meals/data/categories.dart';
import 'package:meals/widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Available Categories")),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: dummyCategories.length,
        itemBuilder: (ctx, index) =>
            CategoryCard(category: dummyCategories[index]),
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
