import 'package:flutter/material.dart';
// import 'package:flutter_widgets_tasks/components/Expanded_Panel/expanded_panel.dart';
// import 'package:flutter_widgets_tasks/components/bottom_app_bar.dart';
// import 'package:flutter_widgets_tasks/components/FAB_with_bottomAppBar/bottom_appbar.dart';
// import 'package:flutter_widgets_tasks/components/dialog/alert_dialog.dart';
// import 'package:flutter_widgets_tasks/components/image_animation/image_animation.dart';
// import 'package:flutter_widgets_tasks/components/input_fields/input_fields.dart';
import 'package:flutter_widgets_tasks/components/design1.dart';
import 'package:flutter_widgets_tasks/helpers/routes.dart';
// import 'package:flutter_widgets_tasks/components/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteHelpers().router,
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SideMenu();
  }
}
