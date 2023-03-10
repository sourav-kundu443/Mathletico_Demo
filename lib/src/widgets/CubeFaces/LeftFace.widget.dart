import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class LeftFace extends StatelessWidget {
  final bool isTransparent;

  LeftFace(this.isTransparent);

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
                onTap: () => handleOnTap(context, 'Subtraction'),
                boxText: 'Subtraction',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_C'),
                boxText: 'L_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_G'),
                boxText: 'L_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_B'),
                boxText: 'L_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_E'),
                boxText: 'L_E',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_I'),
                boxText: 'L_I',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_H'),
                boxText: 'L_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_F'),
                boxText: 'L_F',
                boxColor: '#009B48'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'L_D'),
                boxText: 'L_D',
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
