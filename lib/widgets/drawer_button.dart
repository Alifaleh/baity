import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final onPressed;
  const DrawerButton({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Stack(children: [
        Icon(Icons.menu),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: 11,
            height: 11,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ]),
      onPressed: onPressed,
    );
  }
}
