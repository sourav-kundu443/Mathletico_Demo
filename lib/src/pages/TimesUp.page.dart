import 'package:demo_3d_cube/extensions.dart';
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
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      'Time Up!',
                      style: TextStyle(
                          fontFamily: 'FredokaOne',
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: '#92D3F5'.toColor(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/mdi_loop.png',
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              'Play Again',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const HomeDashboard()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: '#FF6E83'.toColor(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/dashicons_exit.png',
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              'Exit',
                              style: TextStyle(
                                  fontFamily: 'FredokaOne',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                // color: '#000000'.toColor(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          width: 45,
                          height: 45,
                          child: Center(
                              child: Text(
                            totalCorrectAnswerGiven.toString(),
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: '#CAFFCC'.toColor()),
                        ),
                        Text(
                          'Correct',
                          style: TextStyle(
                              fontFamily: 'FredokaOne',
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Center(
                              child: Text(
                            totalIncorrectAnswerGiven.toString(),
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: '#FF6E83'.toColor()),
                        ),
                        Text(
                          'Incorrect',
                          style: TextStyle(
                              fontFamily: 'FredokaOne',
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To check your total coins, go to your',
                      style: TextStyle(
                          fontFamily: 'FredokaOne',
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('account',
                          style: TextStyle(
                              fontFamily: 'FredokaOne',
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: '#428BC1'.toColor())),
                    )
                  ],
                ),
              ))
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (builder) => const HomeDashboard()));
              //     },
              //     child: Text('Home'))
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomTabNavigator(),
    );
  }
}
