import 'package:flutter/material.dart';

void main() {
  runApp(const TwoSquares());
}

class TwoSquares extends StatelessWidget {
  const TwoSquares({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.red,
        ),
      ],
    );
  }
}
