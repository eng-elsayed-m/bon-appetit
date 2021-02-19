import 'package:flutter/material.dart';
import '../Widgets/Category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const navName = "CategoriesScreen";
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        children: DUMMY_CATEGORIS
            .map((catData) =>
                CategoryItems(catData.title, catData.id, catData.imageUrl))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ));
  }
}
