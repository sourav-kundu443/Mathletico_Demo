import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class BottomFace extends StatelessWidget {
  final bool isTransparent;

  BottomFace(this.isTransparent);

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
                onTap: () => handleOnTap(context, 'BT_C'),
                boxText: 'BT_C',
                boxColor: '#FF5900'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_B'),
                boxText: 'BT_B',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_A'),
                boxText: 'BT_A',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_D'),
                boxText: 'BT_D',
                boxColor: '#FFFFFF'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_G'),
                boxText: 'BT_G',
                boxColor: '#FFD500'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_F'),
                boxText: 'BT_F',
                boxColor: '#009B48'.toColor(),
                isTransparent: isTransparent,
              ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_E'),
                boxText: 'BT_E',
                boxColor: '#B90000'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_H'),
                boxText: 'BT_H',
                boxColor: '#0045AD'.toColor(),
                isTransparent: isTransparent,
              ),
              SmallCubeBox(
                onTap: () => handleOnTap(context, 'BT_I'),
                boxText: 'BT_I',
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
