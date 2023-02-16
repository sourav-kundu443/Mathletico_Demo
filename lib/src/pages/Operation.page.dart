import 'dart:convert';
import 'dart:ffi';

import 'package:demo_3d_cube/extensions.dart';
import 'package:demo_3d_cube/src/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import '../Model/AddIntegersModel.dart';

class OperationPage extends StatefulWidget {
  const OperationPage({
    required this.category,
    Key? key,
  }) : super(key: key);
  final String category;

  @override
  State<StatefulWidget> createState() => _OperationPage();
}

class _OperationPage extends State<OperationPage> {
  final TextEditingController _controller = TextEditingController();
  List<dynamic> questionList = [];
  int totalCorrectAnswerGiven = 0;
  int totalIncorrectAnswerGiven = 0;

  void getAddIntegersApiCall() async {
    final response = await http.get(
        Uri.parse(
            'https://webidea.pythonanywhere.com/quiz/generate-questions/integer/addition'),
        headers: {
          "Authorization":
              "JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6InNvdXJhdiIsImV4cCI6MTc2NjU0MzcwMCwib3JpZ19pYXQiOjE2NzY1NDM3MDB9.irYwr5cnScMOxvc7L1nUuJw2q-nXmdAkVKAT0x0pols"
        });
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      setState(() {
        questionList = data['question_list'];
      });
    } else {
      setState(() {
        questionList = [];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getAddIntegersApiCall();
    });
    _controller.text = '';
    totalCorrectAnswerGiven = 0;
    totalIncorrectAnswerGiven = 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height,
            child: questionList.length > 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: '#ffffff'.toColor(),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              const HomeDashboard()));
                                },
                                child: Image.asset(
                                  'assets/images/material-symbols_home.png',
                                  width: 34,
                                  height: 34,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              decoration: BoxDecoration(
                                  color: '#D9D9D9'.toColor(),
                                  borderRadius: BorderRadius.circular(5)),
                              child: TweenAnimationBuilder<Duration>(
                                duration:
                                    const Duration(seconds: 30),
                                tween: Tween(
                                    begin:
                                        const Duration(seconds: 30),
                                    end: Duration.zero),
                                onEnd: () {
                                  print(
                                      'answer = $totalCorrectAnswerGiven , $totalIncorrectAnswerGiven');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => TimesUp(
                                                totalCorrectAnswerGiven:
                                                    totalCorrectAnswerGiven,
                                                totalIncorrectAnswerGiven:
                                                    totalIncorrectAnswerGiven,
                                              )));
                                },
                                builder: (BuildContext context, Duration value,
                                    Widget? child) {
                                  final minutes = value.inMinutes;
                                  final seconds = value.inSeconds % 60;
                                  return Text(
                                    '$minutes:$seconds',
                                    style: TextStyle(
                                        fontFamily: 'FredokaOne',
                                        color: '#FF008A'.toColor(),
                                        fontSize: 20),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: '#D9D9D9'.toColor(),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${questionList[0]} + ${questionList[1]} =',
                                style: TextStyle(
                                    fontFamily: 'FredokaOne', fontSize: 20),
                              ),
                              SizedBox(
                                width: 130,
                                child: ColoredBox(
                                  color: '#ffffff'.toColor(),
                                  child: TextField(
                                    controller: _controller,
                                    cursorColor: '#ffffff'.toColor(),
                                    autofocus: true,
                                    style: TextStyle(
                                        color: '#000000'.toColor(),
                                        fontFamily: 'FredokaOne',
                                        fontSize: 20),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: '#ffffff'.toColor(),
                                      contentPadding: const EdgeInsets.only(
                                          left: 14.0, bottom: 8.0, top: 8.0),
                                    ),
                                    showCursor: true,
                                    readOnly: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height * 0.6,
                            color: '#428BC1'.toColor(),
                            child: GridView.count(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              crossAxisCount: 3,
                              childAspectRatio: (1 / 0.79),
                              children: [
                                InkWell(
                                  onTap: () {
                                    print('1');
                                    setState(() {
                                      _controller.text = '${_controller.text}1';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '1',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('2');
                                    setState(() {
                                      _controller.text = '${_controller.text}2';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('3');
                                    setState(() {
                                      _controller.text = '${_controller.text}3';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '3',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('4');
                                    setState(() {
                                      _controller.text = '${_controller.text}4';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '4',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('5');
                                    setState(() {
                                      _controller.text = '${_controller.text}5';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '5',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('6');
                                    setState(() {
                                      _controller.text = '${_controller.text}6';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '6',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('7');
                                    setState(() {
                                      _controller.text = '${_controller.text}7';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '7',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('8');
                                    setState(() {
                                      _controller.text = '${_controller.text}8';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '8',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('9');
                                    setState(() {
                                      _controller.text = '${_controller.text}9';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '9',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('1');
                                    setState(() {
                                      _controller.text = '${_controller.text}/';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '/',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('1');
                                    setState(() {
                                      _controller.text = '${_controller.text}0';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '0',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('1');
                                    setState(() {
                                      _controller.text = '${_controller.text}.';
                                    });
                                  },
                                  child: Container(
                                    color: '#92D3F5'.toColor(),
                                    child: const Center(
                                        child: Text(
                                      '.',
                                      style: TextStyle(
                                          fontFamily: 'FredokaOne',
                                          fontSize: 25),
                                    )),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.12,
                        color: '#428BC1'.toColor(),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                List<String> c = _controller.text.split("");
                                c.removeLast();
                                setState(() {
                                  _controller.text = c.join();
                                });
                              },
                              child: Container(
                                width: 122,
                                // margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                                margin: const EdgeInsets.only(right: 4.5),
                                color: '#92D3F5'.toColor(),
                                child: Center(
                                    child: Image.asset(
                                  'assets/images/material-symbols_backspace-outline.png',
                                  width: 75,
                                  height: 75,
                                )),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  print('submit');
                                  if (_controller.text != '') {
                                    if (questionList[2]['answer'] ==
                                        int.parse(_controller.text)) {
                                      Fluttertoast.showToast(
                                          msg: "Correct",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.TOP,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.green,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                      setState(() {
                                        _controller.text = '';
                                        totalCorrectAnswerGiven += 1;
                                      });
                                      getAddIntegersApiCall();
                                    } else {
                                      Fluttertoast.showToast(
                                          msg: "Incorrect",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.TOP,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                      setState(() {
                                        _controller.text = '';
                                        totalIncorrectAnswerGiven += 1;
                                      });
                                      getAddIntegersApiCall();
                                    }
                                  } else {
                                    Fluttertoast.showToast(
                                        msg: "Please enter a value",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.TOP,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.grey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  }
                                },
                                child: Container(
                                  color: '#ACFFAA'.toColor(),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/images/ion_enter.png',
                                    width: 75,
                                    height: 75,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : const Center(
                    child: Text(
                      'Loading...',
                      style: TextStyle(
                        fontFamily: 'FredokaOne',
                        fontSize: 25,
                      ),
                    ),
                  )),
      ),
    );
  }
}
