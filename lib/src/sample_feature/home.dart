import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp_01/src/sample_feature/toast_no_context.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/details'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: const Text('Go to the Details screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/example'),
              child: const Text('Go to the Counter screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/todoapp'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: const Text('Go to the Todo App screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/mobx_counter'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              child: const Text('Counter Page Mobx'),
            ),
            const SizedBox(height: 10),
            // ElevatedButton(
            //   onPressed: () => context.go('/todoappmobx'),
            //   style: const ButtonStyle(
            //     backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
            //   ),
            //   child: const Text('Todo App Mobx'),
            // ),
          ],
        ),
      ),
    );
  }
}
