import 'package:challenge_movies/src/core/router/router_register.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigator {
  AppNavigator._();

  static BuildContext? get _context => RouterRegister.globalContext.currentContext;

  static Future<dynamic> popAndPush(String name, {Object? extra})async {
    _context?.pop();
    return await _context?.push(name, extra: extra);
  }
  static Future<dynamic> push(String route, {Object? extra}) async => await _context?.push(route, extra: extra);

  static void pushReplacement(String route, {Object? extra}) => _context?.go(route, extra: extra);

  static void pop({Object? object}) {
    if(_context != null && GoRouter.of(_context!).canPop()){
      GoRouter.of(_context!).pop(object);
    }
  }
  static void popMuiltple({required int times}) {
    if(_context != null) {
      for (int i = 0; i < times; i++) {
        if (!GoRouter.of(_context!).canPop()) break;
        GoRouter.of(_context!).pop();
      }
    }
  }

  static void popUntil (String route) {
    final context = _context;
    if(context == null) return;

    final goRouter = GoRouter.of(context);
    while (goRouter.canPop() && currentRoute != route){
      goRouter.pop();
    }
  }
  static String? get currentRoute => GoRouter.of(_context!).state.fullPath;
    
}