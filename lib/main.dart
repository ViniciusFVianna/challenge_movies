import 'package:challenge_movies/src/core/router/router_register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

final _router = RouterRegister.router;

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            // theme: widget.theme.themeData,
            routerConfig: _router,
          );
}
