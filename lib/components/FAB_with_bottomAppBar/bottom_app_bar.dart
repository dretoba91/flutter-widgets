// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
// import 'package:flutter_widgets_tasks/components/bubble_buttons.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({super.key});

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  List<bool> isSelected = [false, false, false, false];
  List<IconButton> iconButtons = [
    IconButton(
      icon: Icon(Icons.home),
      onPressed: () {}, // Implement your actions
    ),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.add),
      onPressed: () {},
    ),
  ];

  void selected(int value) {
    if (isSelected[value] == false) {
      setState(() {
        isSelected = [false, false, false, false];
        isSelected[value] = !isSelected[value];
      });
    }
    print(isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomAppBar with FAB"),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        tooltip: "A",
        elevation: 2.0,
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 5.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: isSelected[0] ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          selected(0);
                        },
                        padding: EdgeInsets.only(bottom: 20),
                        // constraints: BoxConstraints(),
                      ),
                    ),
                    SizedBox(
                        height: 20,
                        child: Text(
                          "This",
                          style: TextStyle(
                              color: isSelected[0] ? Colors.red : Colors.black),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        icon: Icon(
                          Icons.folder_copy,
                          color: isSelected[1] ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          selected(1);
                        },
                        padding: EdgeInsets.only(bottom: 20),
                        // constraints: BoxConstraints(),
                      ),
                    ),
                    SizedBox(
                        height: 20,
                        child: Text(
                          "is",
                          style: TextStyle(
                            color: isSelected[1] ? Colors.red : Colors.black,
                          ),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("A")],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        icon: Icon(
                          Icons.movie_rounded,
                          color: isSelected[2] ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          selected(2);
                        },
                        padding: EdgeInsets.only(bottom: 20),
                        // constraints: BoxConstraints(),
                      ),
                    ),
                    SizedBox(
                        height: 20,
                        child: Text(
                          "Bottom",
                          style: TextStyle(
                              color: isSelected[2] ? Colors.red : Colors.black),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        icon: Icon(
                          Icons.info,
                          color: isSelected[3] ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          selected(3);
                        },
                        padding: EdgeInsets.only(bottom: 20),
                        // constraints: BoxConstraints(),
                      ),
                    ),
                    SizedBox(
                        height: 20,
                        child: Text(
                          "App",
                          style: TextStyle(
                              color: isSelected[3] ? Colors.red : Colors.black),
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
