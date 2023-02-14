import 'package:flutter/material.dart';

import 'package:demo_3d_cube/src/widgets/index.dart';

class FaceContainer extends StatelessWidget {
  FaceContainer({
    required this.onTap,
    required this.boxColor,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;
  Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(0, 0, 0, 1),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              SmallCubeBox(
                  onTap: onTap,
                  boxText: 'A',
                  boxColor: boxColor),
              SmallCubeBox(
                  onTap: onTap,
                  boxText:'B',
                  boxColor: boxColor),
              SmallCubeBox(
                  onTap: onTap,
                  boxText: 'C',
                  boxColor: boxColor),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'L1',
              //   )),
              // ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'M1',
              //   )),
              // ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                  onTap: onTap,
                  boxText: 'D',
                  boxColor: boxColor),
              SmallCubeBox(
                onTap: onTap,
                boxText: 'E',
                boxColor: boxColor
              ),
              SmallCubeBox(
                onTap: onTap,
                boxText: 'F',
                boxColor: boxColor
              ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'N1',
              //   )),
              // ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'O1',
              //   )),
              // ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'P1',
              //   )),
              // ),
            ],
          ),
          Column(
            children: [
              SmallCubeBox(
                onTap: onTap,
                boxText: 'G',
                boxColor: boxColor
              ),
              SmallCubeBox(
                onTap: onTap,
                boxText: 'H',
                boxColor: boxColor
              ),
              SmallCubeBox(
                  onTap: onTap,
                  boxText: 'I',
                  boxColor: boxColor),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'Q1',
              //   )),
              // ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(
              //       child: Text(
              //     'R1',
              //   )),
              // ),
              // Container(
              //   width: 80,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     color: const Color.fromRGBO(0, 255, 0, 1),
              //     border: Border.all(
              //       width: 2,
              //       color: const Color.fromRGBO(0, 0, 0, 1),
              //     ),
              //     borderRadius: const BorderRadius.all(Radius.circular(10)),
              //   ),
              //   child: const Center(child: Text('S1')),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
