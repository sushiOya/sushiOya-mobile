import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 159,
          child: Image.asset('asset/images/banner/main_banner.png',
              fit: BoxFit.fitWidth),
        ),
        Positioned(
          bottom: 27,
          left: 16,
          child: Container(
            width: 113,
            height: 33,
            padding: const EdgeInsets.symmetric(
                vertical: 7, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1.0, color: Colors.white),
            ),
            child: OutlinedButton(
              onPressed: () {
                print('Clicked!');
              },
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  side: const BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  )),
              child: const Text(
                '설문하러가기',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 24,
          left: 16,
          child: Container(
            width: 201,
            height: 56,
            padding: const EdgeInsets.all(0),
            child: const Text(
              '설문 참여하고 \n오마카세 런치 받아가세요',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

