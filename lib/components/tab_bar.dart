// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TabBars extends StatefulWidget {
  const TabBars({super.key});

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Flutter Tabs Example",
              ),
            ),
            bottom: TabBar(tabs: const [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_railway),
              ),
              Tab(
                icon: Icon(Icons.directions_bike_sharp),
              ),
            ]),
          ),
          body: TabBarView(children: const [
            Center(child: Text("Car")),
            Center(child: Text("Transit")),
            Center(child: Text("Bike")),
          ]),
        ));
  }
}
