import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterRegister {
  RouterRegister._();

  static final GlobalKey<NavigatorState> globalContext = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: globalContext,
    initialLocation: '/',
    routes: <RouteBase> [
      
      ShellRoute(
        builder:(context, state, child) => child,
        routes: [],
      ),
    ],
  );
}