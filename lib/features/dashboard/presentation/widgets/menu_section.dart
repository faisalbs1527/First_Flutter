import 'package:flutter/material.dart';

import 'menu_button.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.only(bottom: 20.0),
      height: 300,
      child: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          childAspectRatio: 1,
          shrinkWrap: true,
          children: const [
            MenuButton(title: 'Inbox', icon: 'assets/ic_1.png'),
            MenuButton(title: 'Maps', icon: 'assets/ic_2.png'),
            MenuButton(title: 'Chats', icon: 'assets/ic_3.png'),
            MenuButton(title: 'Report', icon: 'assets/ic_4.png'),
            MenuButton(title: 'Calendar', icon: 'assets/ic_5.png'),
            MenuButton(title: 'Tips', icon: 'assets/ic_6.png'),
            MenuButton(title: 'Setting', icon: 'assets/ic_7.png'),
            MenuButton(title: 'More', icon: 'assets/ic_8.png'),
          ],
        ),
      ),
    );
  }
}
