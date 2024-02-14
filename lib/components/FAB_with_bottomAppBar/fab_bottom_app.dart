// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({
    this.iconData,
    this.text = '',
  });
  IconData? iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  final List<FABBottomAppBarItem>? items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int>? onTabSelected;

  const FABBottomAppBar({
    Key? key,
    this.items,
    this.centerItemText = '',
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    required this.notchedShape,
    this.onTabSelected,
  })  : assert(items?.length == 2 || items?.length == 4),
        super(key: key);

  @override
  State<FABBottomAppBar> createState() => _FABBottomAppBarState();
}

class _FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updatedIndex(int index) {
    widget.onTabSelected!(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabItem(
          item: widget.items![index], index: index, onPressed: _updatedIndex);
    });
    items.insert(items.length >> 1, _buildMiddleTabItem());

    return BottomAppBar(
      shape: widget.notchedShape,
      color: widget.backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            Text(
              widget.centerItemText,
              style: TextStyle(color: widget.color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
      {FABBottomAppBarItem? item,
      int? index,
      required ValueChanged<int> onPressed}) {
    Color? color =
        _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
        child: SizedBox(
      height: widget.height,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () => onPressed(index!),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                item!.iconData,
                color: color,
                size: widget.iconSize,
              ),
              Text(
                item.text,
                style: TextStyle(color: color),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
