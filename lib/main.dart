import 'package:flutter/material.dart';

void main() {
  runApp(const WhiteScreen());
}

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
