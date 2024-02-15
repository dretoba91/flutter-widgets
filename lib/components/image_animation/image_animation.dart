import 'package:flutter/material.dart';
import 'package:flutter_widgets_tasks/components/image_animation/images.dart';
import 'package:flutter_widgets_tasks/components/image_animation/second_screen.dart';

class MyImageAnimation extends StatefulWidget {
  const MyImageAnimation({super.key});

  @override
  State<MyImageAnimation> createState() => _MyImageAnimationState();
}

class _MyImageAnimationState extends State<MyImageAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hero Animation",
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Wrap(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: images
                .map((image) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondScreen(
                                    url: image.imageList, title: image.name)));
                      },
                      child: Hero(
                          tag: '${image.name}',
                          child: Wrap(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Image.network(
                                "${image.imageList}",
                                height: 100,
                                width: 100,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Wrap(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                direction: Axis.vertical,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  Text(
                                    "${image.name}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("${image.subTitle}")
                                ],
                              )
                            ],
                          )),
                    ))
                .toList()),
      )),
    );
  }
}
