import 'package:flutter/material.dart';
import 'package:furniture_app/utils/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: const EdgeInsets.only(top: 50),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: 65,
              width: 50,
              decoration: const BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
