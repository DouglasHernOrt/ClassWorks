import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CW1 App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterImagePage(),
    );
  }
}

class CounterImagePage extends StatefulWidget {
  @override
  _CounterImagePageState createState() => _CounterImagePageState();
}

class _CounterImagePageState extends State<CounterImagePage> {
  int _counter = 0;
  bool _showFirstImage = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleImage() {
    setState(() {
      _showFirstImage = !_showFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter & Image App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            _showFirstImage
                ? Image.asset('assets/image1.jpg')
                : Image.asset('assets/image2.jpg'),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _toggleImage,
            child: const Text('Toggle Image'),
          ),
        ],
      ),
    );
  }
}
