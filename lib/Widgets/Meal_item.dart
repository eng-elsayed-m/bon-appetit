import 'package:flutter/material.dart';
import '../Screens/Meal_Details_Screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;
  final String imageUrl;
  final Function removeItem;

  const MealItem({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.complexity,
    @required this.affordability,
    @required this.duration,
    @required this.removeItem,
  });

  String get complexityText {
    if (complexity == Complexity.Simple) {
      return "Simple";
    } else if (complexity == Complexity.Challanger) {
      return "Challange";
    } else {
      return "Hard";
    }
  }

  String get affordabilityText {
    if (affordability == Affordability.Affordable) {
      return "Affordable";
    } else if (affordability == Affordability.Pricey) {
      return "Pricey";
    } else {
      return "Expensive";
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(MealScreen.navName, arguments: id)
        .then((result) {
      if (result != null) {
        removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 10,
                    child: Text(title,
                        style: Theme.of(context).textTheme.headline5))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "$duration min",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        complexityText,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        affordabilityText,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
