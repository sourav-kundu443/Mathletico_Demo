import 'package:demo_3d_cube/extensions.dart';
import 'package:flutter/material.dart';

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({Key? key}) : super(key: key);

  @override
  State<BottomTabNavigator> createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: '#00C2FF'.toColor(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => print('1'),
            child: Image.asset('assets/images/bottomNavigationFirstIcon.png',
                width: 60, height: 60, fit: BoxFit.fill),
          ),
          InkWell(
            onTap: () => print('2'),
            child: Image.asset('assets/images/bottomNavigationSecondIcon.png',
                width: 60, height: 60, fit: BoxFit.fill),
          ),
          InkWell(
            onTap: () => print('3'),
            child: Image.asset('assets/images/bottomNavigationThirdIcon.png',
                width: 60, height: 60, fit: BoxFit.fill),
          ),
          InkWell(
            onTap: () => print('4'),
            child: Image.asset('assets/images/bottomNavigationFourthIcon.png',
                width: 60, height: 60, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
