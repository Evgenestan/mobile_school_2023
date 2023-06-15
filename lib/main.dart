import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _reverse = false;

  void _swapChildren() {
    context;
    setState(() {
      _reverse = !_reverse;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _children = [
      Expanded(
        child: Colored(),
      ),
      Expanded(
        child: Colored(),
      ),
    ];
    final List<Widget> children;
    if (_reverse) {
      children = _children.toList();
    } else {
      children = _children.reversed.toList();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _swapChildren,
        tooltip: 'Swap',
        child: const Icon(Icons.swap_horiz),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Colored extends StatefulWidget {
  const Colored({Key? key}) : super(key: key);

  @override
  State<Colored> createState() => _ColoredState();
}

class _ColoredState extends State<Colored> {
  late var _color = Color(hashCode);

  @override
  void initState() {
    super.initState();
    print('initState $hashCode');
  }

  @override
  void dispose() {
    print('dispose $hashCode');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build $hashCode');
    return Container(
      color: _color,
    );
  }
}
