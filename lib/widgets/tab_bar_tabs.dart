import 'package:flutter/material.dart';

class TabBarTab extends StatelessWidget {
  const TabBarTab({
    Key key,
    @required this.selectedIndex,
    @required this.index,
    @required this.selectedColor,
    @required this.unselectedColor,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  final int selectedIndex;
  final int index;
  final Color selectedColor;
  final Color unselectedColor;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff616161),
          width: 1,
        ),
        color: (selectedIndex == index) ? selectedColor : unselectedColor,
      ),
      child: Tab(
        icon: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
