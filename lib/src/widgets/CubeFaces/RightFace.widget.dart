import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class RightFace extends StatelessWidget {
  final bool isTransparent;

  RightFace(this.isTransparent);

  void handleOnTap(BuildContext context, String title) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ChooseCategory(title)));
  }

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
                onTap: () => handleOnTap(context, 'Division'),
                boxText: 'Division',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_B'),
                boxText: 'R_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_F'),
                boxText: 'R_F',
                boxColor: '#009B48'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_D'),
                boxText: 'R_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_H'),
                boxText: 'R_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_C'),
                boxText: 'R_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_G'),
                boxText: 'R_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_E'),
                boxText: 'R_E',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'R_I'),
                boxText: 'R_I',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
