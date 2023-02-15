import 'package:flutter/material.dart';

import 'package:demo_3d_cube/src/widgets/index.dart';

class FaceContainer extends StatelessWidget {
  FaceContainer({
    required this.onTap,
    required this.boxColor,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 1),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              SmallCubeBox(onTap: onTap, boxText: 'A', boxColor: boxColor , isTransparent:false,),
              SmallCubeBox(onTap: onTap, boxText: 'B', boxColor: boxColor, isTransparent:false),
              SmallCubeBox(onTap: onTap, boxText: 'C', boxColor: boxColor, isTransparent:false),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(onTap: onTap, boxText: 'D', boxColor: boxColor, isTransparent:false),
              SmallCubeBox(onTap: onTap, boxText: 'E', boxColor: boxColor, isTransparent:false),
              SmallCubeBox(onTap: onTap, boxText: 'F', boxColor: boxColor, isTransparent:false),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(onTap: onTap, boxText: 'G', boxColor: boxColor, isTransparent:false),
              SmallCubeBox(onTap: onTap, boxText: 'H', boxColor: boxColor, isTransparent:false),
              SmallCubeBox(onTap: onTap, boxText: 'I', boxColor: boxColor, isTransparent:false),
            ],
          ),
        ],
      ),
    );
  }
}
