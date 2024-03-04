import 'package:flutter/material.dart';

class StarredFiles extends StatelessWidget {
  const StarredFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Starred Files"),
        centerTitle: true,
      ),
      body: const SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Starred Files",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
