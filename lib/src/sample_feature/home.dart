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
              child: const Text('Go to the Details screen'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/example'),
              child: const Text('Go to the Counter screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go('/todoapp'),
              child: const Text('Go to the Todo App screen'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              // onPressed: () {},
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ToastNoContext(),
                ));
              },
              child: const Text('Show toasts'),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
