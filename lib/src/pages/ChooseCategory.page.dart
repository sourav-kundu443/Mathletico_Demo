import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class ChooseCategory extends StatefulWidget {
  const ChooseCategory({super.key});

  @override
  State<StatefulWidget> createState() => _ChooseCategory();
}

class _ChooseCategory extends State<ChooseCategory> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height),
          color: '#ffffff'.toColor(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                OperationPage(category: 'integers')));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: '#A0FBF6'.toColor(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width) - 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 50),
                    child: const Text(
                      'Integers',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FredokaOne'),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                OperationPage(category: 'decimals')));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: '#FBA0D2'.toColor(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width) - 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 50),
                    child: const Text(
                      'Decimals',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FredokaOne'),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                OperationPage(category: 'fractions')));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: '#A7FF78'.toColor(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width) - 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 50),
                    child: const Text(
                      'Fractions',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'FredokaOne'),
                    ),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomTabNavigator()
    );
  }
}
