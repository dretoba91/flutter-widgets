// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_widgets_tasks/screen/drawers/my_files.dart';
import 'package:flutter_widgets_tasks/screen/drawers/recent_page.dart';
import 'package:flutter_widgets_tasks/screen/drawers/shared_files.dart';
import 'package:flutter_widgets_tasks/screen/drawers/starred_files.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  List<Widget> pages = <Widget>[
    MyFiles(),
    SharedFiles(),
    StarredFiles(),
    RecentPage(),
  ];
  Widget? currentPage;

  void selectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: pages[selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 245,
              child: DrawerHeader(
                // decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/b4.png"),
                      radius: 40,
                    ),
                    Text(
                      "Sandra Adams",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("sandra_a88@gmail.com"),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("My Files"),
              selected: selectedIndex == 0,
              selectedColor: Colors.deepPurple,
              selectedTileColor: Colors.deepPurple[200],
              onTap: () {
                selectedItem(0);
                context.pop();
                // context.goNamed("myFiles");
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Shared with me"),
              selected: selectedIndex == 1,
              selectedColor: Colors.deepPurple,
              selectedTileColor: Colors.deepPurple[200],
              onTap: () {
                selectedItem(1);
                context.pop();
                // context.go('/starredFiles');
                // context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
              onTap: () {
                selectedItem(2);
                context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined),
              title: Text("Recents"),
              onTap: () {
                selectedItem(3);
                context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Offline"),
              onTap: () {
                selectedItem(4);
                context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Uploads"),
              onTap: () {
                selectedItem(5);
                context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.backup_sharp),
              title: Text("Backups"),
              onTap: () {
                selectedItem(6);
                context.pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
              onTap: () {
                selectedItem(7);
                context.pop();
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                selectedItem(8);
                context.pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
