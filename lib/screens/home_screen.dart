import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode inputFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('asset/images/icons/bookmark.png'),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('asset/images/icons/notification.png'),
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                  ),
                ],
              ),
            ],
            title: Image.asset('asset/images/logo.png'),
            titleSpacing: 0,
            centerTitle: false,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            inputFocus.unfocus();
          });
        },
        child: SingleChildScrollView(
          child: ColoredBox(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
                  child: TextField(
                    focusNode: inputFocus,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 15,
                        color: Color(0XFF94A0B8),
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: '찾고있는 오마카세가 있으신가요?',
                      suffixIcon: Image.asset('asset/images/icons/search.png'),
                    ),
                  ),
                ),
                Stack(
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 37, 16, 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('entry');
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black.withOpacity(0.8),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Container(
                          width: 100,
                          height: 88,
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '엔트리',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '런치\n오만원 까지',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('entry');
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black.withOpacity(0.8),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Container(
                          width: 100,
                          height: 88,
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '미들',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '런치\n십만원 까지',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('entry');
                        },
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black.withOpacity(0.8),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Container(
                          width: 100,
                          height: 88,
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '하이엔드',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '런치\n십만원 이상',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 8,
                  color: Color(0xFFF8F9FC),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Text(
                    '최근 올라온 오마카세',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
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
                                      const Text(
                                        '업장 이름',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        '위치',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        Padding(
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
                                      const Text(
                                        '업장 이름',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        '위치',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        Padding(
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
                                      const Text(
                                        '업장 이름',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8,),
                                      const Text(
                                        '위치',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
