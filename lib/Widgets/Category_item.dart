import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/Screens/Meals_Screen.dart';

class CategoryItems extends StatelessWidget {
  final String title;
  final String id;
  final String image;
  CategoryItems(this.title, this.id, this.image);

  void selectCategory(ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.navName, arguments: {
      'title': title,
      'id': id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      // splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Container(
          padding: EdgeInsets.only(top: 7),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 1)],
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage('$image')),
        ),
      ),
    );
  }
}
