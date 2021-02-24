import 'package:flutter/material.dart';

class SecondaryTabIndecator extends StatelessWidget {
  const SecondaryTabIndecator({
    Key key,
    @required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? Color(0xff0B3352) : Color(0xffEEEEEE),
        border: Border.all(
          color: Color(0xffD9D000),
          width: 1,
        ),
      ),
    );
  }
}
