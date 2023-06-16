import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const NumbersList()));
}

class NumbersList extends StatelessWidget {
  const NumbersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            10,
            (index) => Card(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      index.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('ElevatedButton'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
