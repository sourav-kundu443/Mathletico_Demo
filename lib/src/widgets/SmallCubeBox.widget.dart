import 'package:flutter/material.dart';

class SmallCubeBox extends StatelessWidget {
  SmallCubeBox({
    required this.onTap,
    required this.boxColor,
    required this.boxText,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color boxColor;
  String boxText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(
            width: 2,
            color: const Color.fromRGBO(0, 0, 0, 1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(child: Text(boxText)),
      ),
    );
  }
}
