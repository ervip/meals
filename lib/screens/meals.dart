import 'package:flutter/material.dart';
import 'package:meals/data/meals.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  final Category category;

  const MealsScreen({super.key, required this.category});

  List<Meal> getMealsForCategory(List<Meal> meals, Category category) {
    return meals
        .where((element) => element.categories.contains(category.id))
        .toList();
  }

  Widget listMealsOnScreen(BuildContext context, List<Meal> meals) {
    return ListView.builder(
      itemBuilder: (ctx, index) => ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(meals[index].imageUrl),
        ),
        title: Text(
          meals[index].title,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          "💼 : ${meals[index].complexity.name}\t\t"
          "💰 : ${meals[index].affordability.name}",
        ),
        trailing: Text("⏱\t\t${meals[index].duration} min"),
        titleAlignment: ListTileTitleAlignment.center,
        enableFeedback: true,
        onTap: () {},
      ),
      itemCount: meals.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meals = getMealsForCategory(dummyMeals, category);
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: meals.isEmpty
          ? const Center(child: Text('No Meal Found !!'))
          : listMealsOnScreen(context, meals),
    );
  }
}
