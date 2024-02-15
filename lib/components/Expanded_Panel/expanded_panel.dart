// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_widgets_tasks/components/Expanded_Panel/items.dart';

class MyExpandedPanel extends StatefulWidget {
  const MyExpandedPanel({super.key});

  @override
  State<MyExpandedPanel> createState() => _MyExpandedPanelState();
}

class _MyExpandedPanelState extends State<MyExpandedPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expanded Panel List"),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              items[panelIndex].isExpanded = isExpanded;
            });
          },
          children: items
              .map((item) => ExpansionPanel(
                    canTapOnHeader: true,
                    isExpanded: item.isExpanded,
                    headerBuilder: (context, isExpand) => ListTile(
                      title: Text(
                        "$item.header",
                      ),
                    ),
                    body: ListTile(
                      title: Text(item.body),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
