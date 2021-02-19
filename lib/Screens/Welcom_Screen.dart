import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/TabsScreen.dart';

class Welcom extends StatelessWidget {
  static const navName = 'WelcomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bon Appetit',
                style: Theme.of(context).textTheme.headline5.copyWith(
                    backgroundColor: Colors.transparent,
                    fontSize: 60,
                    color: Colors.grey.shade900),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Secret of Taste",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Righteous",
                        letterSpacing: 5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(TabsScreen.navName),
                    child: (Text(
                      "Recpies >",
                      style: TextStyle(fontSize: 20),
                    )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
