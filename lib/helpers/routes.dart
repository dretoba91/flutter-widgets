import 'package:flutter/material.dart';
import 'package:flutter_widgets_tasks/main.dart';
import 'package:flutter_widgets_tasks/screen/drawers/my_files.dart';
import 'package:flutter_widgets_tasks/screen/drawers/shared_files.dart';
import 'package:go_router/go_router.dart';

class RouteHelpers {
  final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: 'initailRoute',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const MyWidget(),
          transitionDuration: const Duration(microseconds: 150),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/myFiles',
      name: 'myFiles',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const MyFiles(),
          transitionDuration: const Duration(microseconds: 150),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/starredFiles',
      name: 'starredFiles',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SharedFiles(),
          transitionDuration: const Duration(microseconds: 150),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ]);
}
