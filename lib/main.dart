import 'package:flutter/material.dart';

import 'screens/categoriesScreens.dart';
import 'screens/categoryMealScreen.dart';
import 'screens/meal_detailScreen.dart';
import 'screens/tabs_screen.dart';
import './screens/favoriteScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appTitle_Text',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold),
              )),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FavoriteScreen.routeName: (ctx) => FavoriteScreen()
      },
      //onGenerateRoute: (settings) {
      //return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
