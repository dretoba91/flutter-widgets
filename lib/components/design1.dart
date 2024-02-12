// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  void selectedItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Drawer Body"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 220,
              child: DrawerHeader(
                // decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Shared with me"),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined),
              title: Text("Recents"),
            ),
            ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text("Offline"),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text("Uploads"),
            ),
            ListTile(
              leading: Icon(Icons.backup_sharp),
              title: Text("Backups"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}
