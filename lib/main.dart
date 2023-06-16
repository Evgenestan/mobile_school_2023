import 'package:flutter/material.dart';

void main() {
  runApp(const GreenSquare());
}

class GreenSquare extends StatelessWidget {
  const GreenSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: ColoredBox(
        color: Colors.green,
      ),
    );
  }
}
