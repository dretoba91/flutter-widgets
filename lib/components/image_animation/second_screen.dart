import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String url;
  final String title;
  const SecondScreen({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Hero(
            tag: title,
            child: Image.network(
              url,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
