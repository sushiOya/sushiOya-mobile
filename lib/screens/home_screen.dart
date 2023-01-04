import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Color(0XFF94A0B8),
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: '찾고있는 오마카세가 있으신가요?',
                  suffixIcon: Image.asset('asset/images/icons/search.png')),
            ),
          ),
          Stack(
            children: [
              Container(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 24),
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
        ],
      ),
    );
  }
}
