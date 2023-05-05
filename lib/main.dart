import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp_01/src/sample_feature/counterMobx.dart';
import 'package:myapp_01/src/sample_feature/detail_screen.dart';
import 'package:myapp_01/src/sample_feature/example.dart';
import 'package:myapp_01/src/sample_feature/home.dart';
import 'package:myapp_01/src/sample_feature/todo_app.dart';
void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(
          path: 'example',
          builder: (BuildContext context, GoRouterState state) {
            return const Example();
          },
        ),
        GoRoute(
          path: 'todoapp',
          builder: (BuildContext context, GoRouterState state) {
            return const TodoApp();
          },
        ),
        GoRoute(
          path: 'mobx_counter',
          builder: (BuildContext context, GoRouterState state) {
            return const CounterPage();
          },
        ),
        // GoRoute(
        //   path: 'todoappmobx',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const TodoAppMobx();
        //   },
        // ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
