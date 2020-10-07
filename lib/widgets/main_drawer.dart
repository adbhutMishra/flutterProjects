import 'package:demoProject/models/category.dart';
import 'package:demoProject/screens/categoryMealScreen.dart';
import 'package:demoProject/screens/favoriteScreen.dart';
import 'package:flutter/material.dart';
import '../screens/categoriesScreens.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'CookingUp',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'option1',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(FavoriteScreen.routeName);
            },
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'option2',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
            leading: Icon(
              Icons.message,
              size: 26,
            ),
            title: Text(
              'option3',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          )
        ],
      ),
    );
  }
}
