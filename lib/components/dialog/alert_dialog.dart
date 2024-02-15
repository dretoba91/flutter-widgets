// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertDialogs extends StatelessWidget {
  const AlertDialogs({super.key});

  void showAlertDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Reset Setting?",
                style: TextStyle(
                  fontSize: 20,
                )),
            content: Text(
                "This will reset your device to its factory default settings"),
            actions: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // shape: MaterialStateProperty.all<OutlinedBorder>(
                    //   RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(5.0)),
                    // ),
                    elevation: MaterialStateProperty.all<double>(2.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 13,
                    ),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // shape: MaterialStateProperty.all<OutlinedBorder>(
                    //   RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(5.0)),
                    // ),
                    elevation: MaterialStateProperty.all<double>(2.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Accept",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 13,
                    ),
                  )),
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ShowDialog with AlertDialog"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueAccent),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
              ),
              elevation: MaterialStateProperty.all<double>(2.0),
            ),
            onPressed: () {
              showAlertDialog(context);
            },
            child: const Text(
              "ShowDialog",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
      ),
    );
  }
}
