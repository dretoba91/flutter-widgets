// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class FabWithIcons extends StatefulWidget {
  final List<IconData> icons;
  ValueChanged<int> onIconTapped;
  FabWithIcons({
    Key? key,
    required this.icons,
    required this.onIconTapped,
  }) : super(key: key);

  @override
  State<FabWithIcons> createState() => _FabWithIconsState();
}

class _FabWithIconsState extends State<FabWithIcons>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 250),
    );
  }

  void _onTapped(int index) {
    _controller.reverse();
    widget.onIconTapped(index);
  }

  Widget _buildChild(int index) {
    Color backgroundColor = Theme.of(context).cardColor;
    Color foregroundColor = Colors.lightBlue;
    return Container(
        height: 70,
        width: 56.0,
        alignment: FractionalOffset.topCenter,
        child: ScaleTransition(
          scale: CurvedAnimation(
              parent: _controller,
              curve: Interval(
                0.0,
                1.0 - index / widget.icons.length / 2.0,
                curve: Curves.easeOut,
              )),
          child: FloatingActionButton(
            onPressed: () => _onTapped(index),
            backgroundColor: backgroundColor,
            mini: true,
            child: Icon(
              widget.icons[index],
              color: foregroundColor,
            ),
          ),
        ));
  }

  Widget _buildFab() {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: Colors.blue,
      onPressed: () {
        if (_controller.isDismissed) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      tooltip: "Increment",
      elevation: 2.0,
      child: Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.icons.length, (int index) {
        return _buildChild(index);
      }).toList()
        ..add(_buildFab()),
    );
  }
}
