import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyConvexAppBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyConvexAppBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.fixedCircle,
      elevation: 5,
      height: 70,
      backgroundColor: const Color(0xFF220D46),
      items: [
        TabItem(
          icon: currentIndex == 0
              ? Image.asset('assets/icons/icon_home.png')
              : Image.asset('assets/icons/icon_home_of.png'),
          title: 'Home',
        ),
        TabItem(
          icon: currentIndex == 1
              ? Image.asset('assets/icons/icon_result_on.png')
              : Image.asset('assets/icons/icon_result.png'),
          title: 'Result',
        ),
        TabItem(
          icon: Image.asset('assets/icons/icon_dna.png'),
          title: 'Talent DNA',
        ),
        TabItem(
          icon: currentIndex == 3
              ? Image.asset('assets/icons/icon_history_on.png')
              : Image.asset('assets/icons/icon_history.png'),
          title: 'History',
        ),
        TabItem(
          icon: currentIndex == 4
              ? Image.asset('assets/icons/icon_order_on.png')
              : Image.asset('assets/icons/icon_order.png'),
          title: 'Order',
        ),
      ],
      initialActiveIndex: currentIndex,
      onTap: onTap,
    );
  }
}
