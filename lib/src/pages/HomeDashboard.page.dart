import 'dart:math';

import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import '../enums/cubeEnums.enum.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height),
          color: '#B7D334'.toColor(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CubixD(
                size: 240.0,
                delta: Vector2(pi / 4, pi / 4),
                onSelected: (SelectedSide opt, Vector2 delta) {
                  print(
                      'On selected callback:\n\topt = ${opt}\n\tdelta = ${delta}');
                  // setState(() {
                  //   face = opt as String;
                  // });
                },
                left: FaceContainer(
                  onTap: () => print('left'),
                  boxColor: '#1cec00'.toColor(),
                ),
                front: FaceContainer(
                  onTap: () => print('frontxxx'),
                  boxColor: '#0011ec'.toColor(),
                ),
                back: FaceContainer(
                  onTap: () => print('back'),
                  boxColor: '#ec0035'.toColor(),
                ),
                top: FaceContainer(
                  onTap: () => print('top'),
                  boxColor: '#e8ff0c'.toColor(),
                ),
                bottom: FaceContainer(
                  onTap: () => print('bottom'),
                  boxColor: '#00dec8'.toColor(),
                ),
                right: FaceContainer(
                  onTap: () => print('right'),
                  boxColor: '#ff69b4'.toColor(),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const ChooseCategory()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: '#15f5ef'.toColor(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: Text(
                  'Play',
                  style: TextStyle(
                      color: '#252525'.toColor(), fontFamily: 'FredokaOne'),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomTabNavigator(),
    );
  }
}
