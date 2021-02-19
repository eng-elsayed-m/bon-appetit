import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challanger, Hard }
enum Affordability { Affordable, Pricey, Louxerous }

class Meal {
  final String id;
  final List<String> category;
  final String title;
  final String imageUrl;
  final List<String> steps;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactousFree;
  final bool isVagen;
  final bool isVegetarian;

  const Meal(
      {@required this.id,
      @required this.category,
      @required this.title,
      @required this.imageUrl,
      @required this.steps,
      @required this.ingredients,
      @required this.duration,
      @required this.complexity,
      @required this.affordability,
      @required this.isGlutenFree,
      @required this.isLactousFree,
      @required this.isVagen,
      @required this.isVegetarian});
}
