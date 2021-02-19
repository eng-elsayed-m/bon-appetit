import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  Widget listTileBuild(String title, IconData icon, Function navHandler) {
    return ListTile(
        onTap: navHandler,
        leading: CircleAvatar(
          child: Icon(
            icon,
            color: Colors.amber,
          ),
          backgroundColor: Colors.grey.shade700,
        ),
        title: Text(title,
            style: TextStyle(
                fontFamily: "Righteous",
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.grey.shade700)));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20),
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: 100,
              child: Center(
                child: Text("Bon Appetit",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(backgroundColor: Colors.transparent)),
              ),
            ),
            listTileBuild("Meals", Icons.restaurant, () {
              Navigator.of(context).pushReplacementNamed("TabsScreen");
            }),
            listTileBuild("Settings", Icons.settings, () {
              Navigator.of(context).pushReplacementNamed("SettingsScreen");
            })
          ],
        ),
      ),
    );
  }
}
