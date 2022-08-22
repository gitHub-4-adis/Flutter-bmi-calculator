import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  // const bars({ Key? key }) : super(key: key);

  double width = 0;

  LeftBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: width,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(0.0),
            topRight: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
        ),
      ),
    );
  }
}

class RightBar extends StatelessWidget {
  // const RightBar({ Key? key }) : super(key: key);

  double width = 0;

  RightBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: width,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50.0),
            topRight: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
          ),
        ),
      ),
    );
  }
}
