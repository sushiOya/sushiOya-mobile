import 'package:flutter/material.dart';

import '../widget/home_app_bar.dart';
import '../widget/home_horizontal_list_view.dart';
import '../widget/home_level_filter.dart';
import '../widget/home_main_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode inputFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(inputFocus: inputFocus),
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
              children: const [
                MainBanner(),
                LevelFilter(),
                Divider(
                  thickness: 8,
                  color: Color(0xFFF8F9FC),
                ),
                HorizontalListView(categoryName: '최근 올라온 오마카세',),
                SizedBox(height: 32,),
                HorizontalListView(categoryName: '#입문으로 딱인',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

