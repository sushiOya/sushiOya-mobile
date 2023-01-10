import 'package:flutter/material.dart';

class HorizontalImageListView extends StatelessWidget {
  const HorizontalImageListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '최근 후기',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 240,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'asset/images/banner/main_banner.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                print('IconButton');
                              },
                              icon: const Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text('이름', style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        left: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '업장이름',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 4,),
                            Text(
                              '제목입니다.제목입니다.'.length >= 9 ? '제목입니다.제목입니다.'.substring(0,9).padRight(12,'.'): '제목입니다.',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 240,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'asset/images/banner/main_banner.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                print('IconButton');
                              },
                              icon: const Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text('이름', style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 14,
                        left: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '업장이름',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 4,),
                            Text(
                              '제목입니다.제목입니다.'.length >= 9 ? '제목입니다.제목입니다.'.substring(0,9).padRight(12,'.'): '제목입니다.',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
