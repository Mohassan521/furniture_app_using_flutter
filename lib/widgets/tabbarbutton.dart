import 'package:flutter/material.dart';
import 'package:furniture_app/data/tabBarMenu.dart';
import 'package:furniture_app/utils/colors.dart';

class TabBarButton extends StatefulWidget {
  @override
  _TabBarButtonState createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  int id = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < tabMenu.length; i++)
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                id = tabMenu[i].id;
              });
            },
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: id == i ? green : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(tabMenu[i].name),
              ),
            ),
          ),
      ],
    );
  }
}
