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
                      x = newSide == SelectedSide.back
                          ?  0.0
                          : 0.0;
                      y = newSide == SelectedSide.back
                          ? 4.725148911483915
                          : -1.4945853721967617;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.right) {
                    setState(() {
                      x = newSide == SelectedSide.back
                          ? 3.192492925187825
                          : 0.0;
                      y = newSide == SelectedSide.back
                          ? -1.6563854821189703
                          : 1.5613135364697852;
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
                      x = newSide == SelectedSide.left
                          ? 0.0
                          : newSide == SelectedSide.right
                              ? 0.0
                              : 3.192492925187825;
                      y = newSide == SelectedSide.left
                          ? -2.998688397918353
                          : newSide == SelectedSide.right
                              ? 3.0591411862409403
                              : 0.0;
                      newSide = opt;
                    });
                  } else if (opt == SelectedSide.front) {
                    setState(() {
                      x = newSide == SelectedSide.right
                          ? 3.192492925187825
                          : 0.0;
                      y = newSide == SelectedSide.right
                          ? -3.3096332762627205
                          : 0.0;
                      newSide = opt;
                    });
                  } else {
                    setState(() {
                      x = 0.0;
                      y = 0.0;
                      newSide = SelectedSide.front;
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
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (builder) => const ChooseCategory()));
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: '#15f5ef'.toColor(),
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              //     textStyle: const TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12), // <-- Radius
              //     ),
              //   ),
              //   child: Text(
              //     'Play',
              //     style: TextStyle(
              //         color: '#252525'.toColor(), fontFamily: 'FredokaOne'),
              //   ),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomTabNavigator(),
    );
  }
}
