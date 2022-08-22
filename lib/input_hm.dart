import 'dart:async';

import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  // const Input({Key? key}) : super(key: key);
  String text;
  final TextEditingController _tec;

  Input(this.text, this._tec);


  @override
  Widget build(BuildContext context) {
  final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      width: currentWidth / 2,
      child: TextField(
        cursorColor: Colors.yellow,
        controller: _tec,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.white60,
          ),
        ),
        style: const TextStyle(
          fontSize: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
