import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
