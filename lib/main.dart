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
  bool _showFrame = false;

  final _globalKey = GlobalKey();

  void _changeFrame() {
    context;
    setState(() {
      _showFrame = !_showFrame;
    });
  }

  late final _children = [
    Expanded(
      child: const Colored(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget body = SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _children,
      ),
    );

    if (_showFrame) {
      body = DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 5,
          ),
        ),
        child: body,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: _changeFrame,
        child: const Icon(Icons.square_outlined),
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
  late final _color = Color(hashCode);

  @override
  void initState() {
    super.initState();
    print('initState $hashCode');
  }

  @override
  void activate() {
    print('activate $hashCode');
    super.activate();
  }

  @override
  void deactivate() {
    print('deactivate $hashCode');
    super.deactivate();
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
