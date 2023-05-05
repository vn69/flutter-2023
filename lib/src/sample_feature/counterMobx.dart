import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:myapp_01/stores/counter.dart';

final counter = Counter(); // Instantiate the store

/// The details screen
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: counter.decrement,
                  tooltip: 'Decrement',
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: counter.increment,
                  tooltip: 'Increment',
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
