import 'package:flutter/material.dart';

import 'colorful_app_bar.dart';

void main() {
  runApp(MaterialApp(home: const NumbersSliverList()));
}

class NumbersSliverList extends StatelessWidget {
  const NumbersSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top: 50),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, i) => Card(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    i.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              childCount: 50,
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
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
