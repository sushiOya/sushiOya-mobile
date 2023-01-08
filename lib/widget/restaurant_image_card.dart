import 'package:flutter/material.dart';

class RestaurantImageCard extends StatelessWidget {
  final String restaurantName;
  final String restaurantLocation;

  const RestaurantImageCard({
    Key? key, required this.restaurantName, required this.restaurantLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 140,
              height: 231,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 140,
                        height: 168,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('asset/images/banner/main_banner.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          constraints: const BoxConstraints(),
                          onPressed: (){
                            print('IconButton');
                          },
                          icon: Image.asset('asset/images/icons/bookmark_circle.png'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    restaurantName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    restaurantLocation,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
