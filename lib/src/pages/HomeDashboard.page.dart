import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/CubeFaces/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

import '../enums/cubeEnums.enum.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  dynamic x, y;
  late SelectedSide newSide;

  @override
  void initState() {
    super.initState();
    x = 0.0;
    y = 0.0;
    newSide = SelectedSide.front;
  }

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
                delta: Vector2(x, y),
                newSide: newSide,
                onSelected: (SelectedSide opt, Vector2 delta) {
                  print(
                      'On selected callback:\n\topt = ${opt}\n\tdelta = ${delta}');
                  if (opt == SelectedSide.left) {
                    setState(() {
                      x = 0.0;
                      y = -1.4945853721967617;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.right) {
                    setState(() {
                      x = 0.0;
                      y = 1.6056595265195701;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.top) {
                    setState(() {
                      x = 1.6343170766932564;
                      y = 0.0;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.bottom) {
                    setState(() {
                      x = -1.510360970072175;
                      y = 0.0;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.back) {
                    setState(() {
                      x = 0.0;
                      y = 3.211214463439966;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.front) {
                    setState(() {
                      x = 0.0;
                      y = 0.0;
                      newSide = opt;
                    });
                  } else {
                    setState(() {
                      x = x;
                      y = y;
                      newSide = newSide;
                    });
                  }
                },
                left: LeftFace(false),
                front: FrontFace(false),
                back: BackFace(false),
                top: TopFace(false),
                bottom: BottomFace(false),
                right: RightFace(false),
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
