import 'package:flutter/material.dart';
import '../Widgets/Drawer.dart';
import 'Categories_Screen.dart';
import 'Favorites_Screen.dart';

class TabsScreen extends StatefulWidget {
  static const navName = 'TabsScreen';
  @override
  _TapsScreenState createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TabsScreen> {
  final List<Widget> _tabs = [CategoriesScreen(), FavoritesScreen()];
  final List<String> _titles = ["Categories", "Favorite"];
  int tabIndex = 0;
  int titleIndex = 0;
  void _selectTab(int index) {
    setState(() {
      tabIndex = index;
      titleIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(_titles[titleIndex],
            style: Theme.of(context).textTheme.headline6),
      ),
      drawerEnableOpenDragGesture: true,
      drawer: Drawers(),
      body: _tabs[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade900,
          onTap: _selectTab,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
                color: Theme.of(context).accentColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).accentColor,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                label: ""),
          ]),
    );

    // Another Way to create Tabs
    // DefaultTabController(
    //     length: 2,
    //     // initialIndex: 0,
    //     child: Scaffold(
    //         appBar: AppBar(
    //           title: Text("Categories"),
    //           bottom: TabBar(tabs: <Widget>[
    //             Tab(
    //               child: Icon(Icons.category),
    //             ),
    //             Tab(
    //               child: Icon(Icons.star),
    //             ),
    //           ]),
    //         ),
    //         body: TabBarView(
    //           children: [CategoriesScreen(), FavoritesScreen()],
    //         )));
  }
}
