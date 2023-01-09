import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final FocusNode inputFocus;

  const HomeAppBar({
    Key? key, required this.inputFocus,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(132);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                SizedBox(
                  child: Row(
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
                ),
              ],
              title: Image.asset('asset/images/logo.png'),
              titleSpacing: 0,
              centerTitle: false,
            ),
            Container(
              color: Colors.white,
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
                  suffixIcon:
                  Image.asset('asset/images/icons/search.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
