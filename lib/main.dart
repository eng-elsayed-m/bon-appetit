import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/Welcom_Screen.dart';
import 'Screens/Meals_Screen.dart';
import 'Screens/SettingsScreen.dart';
import 'models/meal.dart';
import 'Screens/TabsScreen.dart';
import 'Screens/Categories_Screen.dart';
import 'Screens/Meal_Details_Screen.dart';
import 'dummy_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    "vegan": false,
    "vegetarian": false,
    "gluten": false,
    "lactose": false
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  void filtering(Map<String, bool> filterData) {
    setState(() {
      filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (filters["gluten"] && !meal.isGlutenFree) {
          return false;
        }
        if (filters["lactose"] && !meal.isLactousFree) {
          return false;
        }
        if (filters["vegan"] && !meal.isVagen) {
          return false;
        }
        if (filters["vegetarian"] && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meals",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade900,
          primaryColor: Colors.grey.shade900,
          accentColor: Colors.amber,
          fontFamily: "Montserrat",
          canvasColor: Color.fromRGBO(255, 254, 229, 0.8),
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              subtitle1: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              headline6: TextStyle(
                fontFamily: "Righteous",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade400,
                letterSpacing: 3,
              ),
              headline5: TextStyle(
                  fontFamily: "KaushanScript",
                  fontSize: 30,
                  backgroundColor: Colors.black87,
                  shadows: [
                    Shadow(
                        blurRadius: 0,
                        offset: Offset.fromDirection(0, 3),
                        color: Colors.amber.shade900)
                  ],
                  fontWeight: FontWeight.w900,
                  color: Colors.white))),
      initialRoute: "/",
      routes: {
        "/": (ctx) => Welcom(),
        CategoryMealsScreen.navName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        TabsScreen.navName: (ctx) => TabsScreen(),
        MealScreen.navName: (ctx) => MealScreen(),
        SettingsScreen.navName: (ctx) => SettingsScreen(filters, filtering),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   // return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      //   if (settings.name == "CategoryMealsScreen") {
      //     return MaterialPageRoute(builder: (ctx) => CategoryMealsScreen());
      //   } else if (settings.name == "CategoriesScreen") {
      //     return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      //   } else {import 'dart:js';

      //     return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      //   }
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
