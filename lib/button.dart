import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault(
      {Key? key,
      this.height = 80.0,
      this.width = 200.0,
      required this.color,
      required this.text})
      : super(key: key);

  final double height, width;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary, fontSize: 16.0),
      ),
    );
  }
}
