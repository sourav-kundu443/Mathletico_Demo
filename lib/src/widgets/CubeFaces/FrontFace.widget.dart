import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class FrontFace extends StatelessWidget {
  final bool isTransparent;

  FrontFace(this.isTransparent);

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
                onTap: () => handleOnTap(context, 'Addition'),
                boxText: 'Addition',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_B'),
                boxText: 'F_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_C'),
                boxText: 'F_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_D'),
                boxText: 'F_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_E'),
                boxText: 'F_E',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_F'),
                boxText: 'F_F',
                boxColor: '#009B48'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_G'),
                boxText: 'F_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_H'),
                boxText: 'F_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'F_I'),
                boxText: 'F_I',
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
