import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/dummy_data.dart';

class MealScreen extends StatelessWidget {
  static const navName = "MealDetailScreen";
  Widget buildGrid(List grid, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Theme.of(context).accentColor, width: 3)),
      width: MediaQuery.of(context).size.width - 20,
      height: 250,
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (ctx, index) => Card(
          elevation: 3,
          shadowColor: Theme.of(context).primaryColor,
          color: Theme.of(context).accentColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            child: Text(
              grid[index],
            ),
          ),
        ),
        itemCount: grid.length,
      ),
    );
  }

  Widget buildSteps(List steps, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(offset: Offset.zero, blurRadius: 3)]),
      width: MediaQuery.of(context).size.width,
      height: 250,
      padding: const EdgeInsets.only(top: 5, right: 50),
      margin: EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
            leading: CircleAvatar(
              child: Text(
                "# ${(index + 1)}",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.amber,
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(steps[index]),
            )),
        itemCount: steps.length,
      ),
    );
  }

  Widget buildTitle(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Text(text, style: Theme.of(context).textTheme.headline6)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(overflow: Overflow.visible, fit: StackFit.loose, children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(115),
                      bottomRight: Radius.circular(115)),
                  child: Image.network(
                    selectedMeal.imageUrl,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: -35,
                  child: Center(
                    child: Container(
                      child: Text(
                        selectedMeal.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontSize: 22),
                        softWrap: false,
                        textScaleFactor: 1.5,
                      ),
                    ),
                  )),
              Positioned(
                top: 30,
                child: IconButton(
                  hoverColor: Colors.amber,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: 40,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              )
            ]),
            SizedBox(
              height: 40,
            ),
            buildTitle("Ingredients", context),
            buildGrid(selectedMeal.ingredients, context),
            buildTitle("Steps", context),
            buildSteps(selectedMeal.steps, context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.delete,
          ),
          onPressed: () {
            Navigator.of(context).pop(mealId);
          }),
    );
  }
}
