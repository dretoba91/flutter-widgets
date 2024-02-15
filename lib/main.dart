import 'package:flutter/material.dart';
import 'package:flutter_widgets_tasks/components/Expanded_Panel/expanded_panel.dart';
// import 'package:flutter_widgets_tasks/components/bottom_app_bar.dart';
import 'package:flutter_widgets_tasks/components/FAB_with_bottomAppBar/bottom_appbar.dart';
import 'package:flutter_widgets_tasks/components/dialog/alert_dialog.dart';
import 'package:flutter_widgets_tasks/components/image_animation/image_animation.dart';
import 'package:flutter_widgets_tasks/components/input_fields/input_fields.dart';
// import 'package:flutter_widgets_tasks/components/design1.dart';
// import 'package:flutter_widgets_tasks/components/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyImageAnimation(),
    );
  }
}

