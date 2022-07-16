import 'package:flutter/cupertino.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key? key,
      required this.img,
      this.height = 200.0,
      this.width = 200.0,
      required this.color})
      : super(key: key);

  final Color color;
  final double height;
  final double width;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: img,
    );
  }
}
