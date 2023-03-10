import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class TopFace extends StatelessWidget {
  final bool isTransparent;

  TopFace(this.isTransparent);

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
                onTap: () => handleOnTap(context, 'Multiplication'),
                boxText: 'Multiplication',
                boxColor: '#FFD500'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_H'),
                boxText: 'T_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_I'),
                boxText: 'T_I',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_F'),
                boxText: 'T_F',
                boxColor: '#009B48'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_D'),
                boxText: 'T_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_E'),
                boxText: 'T_E',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_A'),
                boxText: 'T_A',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_B'),
                boxText: 'T_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'T_C'),
                boxText: 'T_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
