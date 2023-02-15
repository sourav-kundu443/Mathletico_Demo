import 'package:demo_3d_cube/extensions.dart';
import 'package:flutter/material.dart';

class SmallCubeBox extends StatelessWidget {
  SmallCubeBox({
    required this.onTap,
    required this.boxColor,
    required this.boxText,
    required this.isTransparent,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color boxColor;
  String boxText;
  bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isTransparent ? 95 : 80,
        height: isTransparent ? 95 : 80,
        decoration: BoxDecoration(
          color: isTransparent ? Color.fromRGBO(0, 0, 0, 0) : boxColor,
          border: Border.all(
            width: 2,
            color: isTransparent
                ? Color.fromRGBO(0, 0, 0, 0)
                :  const Color.fromRGBO(0, 0, 0, 1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
            child: Text(
          boxText,
          style: TextStyle(
            color: isTransparent
                ? Color.fromRGBO(0, 0, 0, 0)
                : boxColor == '#ffffff'.toColor() ? '#000000'.toColor() : '#ffffff'.toColor(),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
