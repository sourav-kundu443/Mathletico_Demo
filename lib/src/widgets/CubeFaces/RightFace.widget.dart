import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class RightFace extends StatelessWidget {
  final bool isTransparent;
  RightFace(this.isTransparent);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isTransparent ? Color.fromRGBO(0, 0, 0, 0) : '#000000'.toColor(),
      width: 240,
      height: 240,
      child: Row(
        children: <Widget>[
          Column(
            children: [
              SmallCubeBox(
                onTap: () => print('R_A'),
                boxText: 'R_A',
                boxColor: '#B90000'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_B'),
                boxText: 'R_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_F'),
                boxText: 'R_F',
                boxColor: '#009B48'.toColor(),
                isTransparent:isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => print('R_D'),
                boxText: 'R_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_H'),
                boxText: 'R_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_C'),
                boxText: 'R_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent:isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => print('R_G'),
                boxText: 'R_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_E'),
                boxText: 'R_E',
                boxColor: '#B90000'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('R_I'),
                boxText: 'R_I',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent:isTransparent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
