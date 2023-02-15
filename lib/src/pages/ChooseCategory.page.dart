import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:demo_3d_cube/src/widgets/index.dart';
import 'package:flutter/material.dart';

class ChooseCategory extends StatefulWidget {
  final String title;

  const ChooseCategory(this.title, {super.key});

  @override
  State<StatefulWidget> createState() => _ChooseCategory();
}

class _ChooseCategory extends State<ChooseCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: (MediaQuery.of(context).size.width),
            height: (MediaQuery.of(context).size.height),
            color: '#ffffff'.toColor(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: 76,
                  color: '#D9D9D9'.toColor(),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/leftArrow.png',
                          width: 34,
                          height: 34,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const HomeDashboard()));
                        },
                        child: Image.asset(
                          'assets/images/material-symbols_home.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Text(
                              widget.title,
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  color: '#000000'.toColor()),
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            right: MediaQuery.of(context).size.width / 10,
                            child: Image.asset(
                              'assets/images/bi_info-circle.png',
                              width: 25,
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        const OperationPage(category: 'integers')));
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
                                        const OperationPage(category: 'decimals')));
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
                                        const OperationPage(category: 'fractions')));
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomTabNavigator());
  }
}
