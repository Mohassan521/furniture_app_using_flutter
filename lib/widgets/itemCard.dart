import 'package:flutter/material.dart';
import 'package:furniture_app/model/model.dart';
import 'package:furniture_app/utils/text_style.dart';

class ItemCard extends StatelessWidget {
  final Model model;

  const ItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            child: Image.asset(
              model.image[0],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: itemCardHeading,
                ),
                SizedBox(height: 10),
                Text(
                  model.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: itemCardDes,
                ),
                SizedBox(height: 10),
                Text(
                  model.price,
                  style: itemCardPrice,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}
