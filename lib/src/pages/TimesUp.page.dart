import 'package:demo_3d_cube/src/pages/HomeDashboard.page.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class TimesUp extends StatelessWidget {
  const TimesUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Times Up!'),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const HomeDashboard()));
              }, child: Text('Home'))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomTabNavigator(),
    );
  }
}
