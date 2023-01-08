import 'package:flutter/material.dart';

import 'restaurant_image_card.dart';

class HorizontalListView extends StatelessWidget {
  final String categoryName;

  const HorizontalListView({
    Key? key, required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            categoryName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                RestaurantImageCard(restaurantName: '매우 멋져', restaurantLocation: '서울 강동구'),
                RestaurantImageCard(restaurantName: '많이 멋져', restaurantLocation: '서울 송파구'),
                RestaurantImageCard(restaurantName: '조금 멋져', restaurantLocation: '서울 강남구'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}