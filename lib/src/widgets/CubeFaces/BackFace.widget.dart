import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class BackFace extends StatelessWidget {
  final bool isTransparent;
  BackFace(this.isTransparent);
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
                onTap: () => print('B_A'),
                boxText: 'B_A',
                boxColor: '#B90000'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_E'),
                boxText: 'B_E',
                boxColor: '#B90000'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_C'),
                boxText: 'B_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent:isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => print('B_H'),
                boxText: 'B_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_B'),
                boxText: 'B_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_F'),
                boxText: 'B_F',
                boxColor: '#009B48'.toColor(),
                isTransparent:isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => print('B_G'),
                boxText: 'B_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_D'),
                boxText: 'B_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent:isTransparent,
              ),
              SmallCubeBox(
                onTap: () => print('B_I'),
                boxText: 'B_I',
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
