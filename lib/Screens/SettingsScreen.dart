import 'package:flutter/material.dart';
import '../Widgets/Drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const navName = "SettingsScreen";
  final Function _saveFilters;
  final Map<String, bool> currentFilters;
  SettingsScreen(this.currentFilters, this._saveFilters);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _glutenFree = false;
  bool _vegan = false;
  bool _lactosFree = false;
  bool _vegetarian = false;
  @override
  initState() {
    _glutenFree = widget.currentFilters["gluten"];
    _lactosFree = widget.currentFilters["lactose"];
    _vegan = widget.currentFilters["vegan"];
    _vegetarian = widget.currentFilters["vegetarian"];
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String discrip,
    bool value,
    Function update,
  ) {
    return SwitchListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      value: value,
      subtitle: Text(
        discrip,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      onChanged: update,
      activeColor: Colors.amber,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  final selectedFilters = {
                    "gluten": _glutenFree,
                    "lactose": _lactosFree,
                    "vegan": _vegan,
                    "vegetarian": _vegetarian,
                  };
                  widget._saveFilters(selectedFilters);
                })
          ],
        ),
        drawer: Drawers(),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text("Adject displayed meals",
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    "GlutenFree", "Display only glutn free meals", _glutenFree,
                    (newVal) {
                  setState(() {
                    _glutenFree = newVal;
                  });
                }),
                _buildSwitchListTile(
                    "LactoseFree", "Display only glutn free meals", _lactosFree,
                    (newVal) {
                  setState(() {
                    _lactosFree = newVal;
                  });
                }),
                _buildSwitchListTile(
                    "Vegan", "Display only glutn free meals", _vegan, (newVal) {
                  setState(() {
                    _vegan = newVal;
                  });
                }),
                _buildSwitchListTile(
                    "Vegetarian", "Display only glutn free meals", _vegetarian,
                    (newVal) {
                  setState(() {
                    _vegetarian = newVal;
                  });
                })
              ],
            ))
          ],
        ));
  }
}
