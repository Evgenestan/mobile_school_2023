import 'package:flutter/material.dart';

void main() {
  runApp(const RedSquareInGreenSquare());
}

class RedSquareInGreenSquare extends StatelessWidget {
  const RedSquareInGreenSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Container(
          height: 50,
          width: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}
