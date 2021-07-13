import 'package:flutter/material.dart';
import 'package:apprefeicoes/models/meal.dart';
import 'package:apprefeicoes/components/meal_itm.dart';
class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição foi marcada como favorita'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
         return MealItm(favoriteMeals[index]);
        },
      );
    }
  }
}
