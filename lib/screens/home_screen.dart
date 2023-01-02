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
                      icon: Image.asset('images/icons/bookmark.png'),
                      padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/icons/notification.png'),
                      padding: EdgeInsets.zero,
                    constraints: BoxConstraints.tight(const Size(24, 24)),
                  ),
                ],
              ),
            ],
            title: Image.asset('images/logo.png'),
            titleSpacing: 0,
            centerTitle: false,
          ),
        ),
      ),
      body: const Center(
        child: Text('test'),
      ),
    );
  }
}
