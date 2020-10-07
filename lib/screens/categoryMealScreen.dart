import 'package:demoProject/widgets/meal_item.dart';

import '../models/meal.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  static String routeName = "/category-mealScreen";
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeal[index].id,
                title: categoryMeal[index].title,
                imageUrl: categoryMeal[index].imageUrl,
                duration: categoryMeal[index].duration,
                complexity: categoryMeal[index].complexity,
                affordability: categoryMeal[index].affordability);
          },
          itemCount: categoryMeal.length,
        ));
  }
}
