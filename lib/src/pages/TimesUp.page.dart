import 'package:demo_3d_cube/src/pages/HomeDashboard.page.dart';
import 'package:flutter/material.dart';

class TimesUp extends StatelessWidget {
  final int totalCorrectAnswerGiven;
  final int totalIncorrectAnswerGiven;

  TimesUp(
      {required this.totalCorrectAnswerGiven,
      required this.totalIncorrectAnswerGiven,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('answer t = $totalCorrectAnswerGiven , $totalIncorrectAnswerGiven');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Times Up!'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const HomeDashboard()));
                  },
                  child: Text('Home'))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomTabNavigator(),
    );
  }
}
