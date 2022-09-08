// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  CalculatorScreen createState() => CalculatorScreen();
}

class CalculatorScreen extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ian\'s Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.fromLTRB(20, 200, 20, 0),
            decoration: BoxDecoration(
              border: Border(
                bottom:
                    BorderSide(width: 1.5, color: Color.fromARGB(55, 0, 0, 0)),
              ),
            ),
            child: Text(
              screenTxt,
              style: TextStyle(fontSize: 70),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 5, bottom: 0),
                height: 70,
                width: 150,
                child: TextButton(
                  child: Text(
                    "AC",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      refresh();
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    userInput("backSpace");
                  },
                  child: Icon(
                    Icons.backspace,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    calculateVal("/");
                  },
                  child: Icon(
                    Icons.percent,
                    color: Colors.blue,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                height: 70,
                child: TextButton(
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 50),
                    ),
                    onPressed: () {
                      setState(() {
                        userInput("7");
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "8",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("8");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("9");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    calculateVal("*");
                  },
                  child: Text(
                    "x",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("4");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("5");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("6");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    calculateVal("-");
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("1");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("2");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                height: 70,
                child: TextButton(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 50),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("3");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    calculateVal("+");
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, top: 0, right: 0, bottom: 0),
                padding: EdgeInsets.only(right: 20),
                height: 70,
                width: 170,
                child: TextButton(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      userInput("0");
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      userInput(".");
                    });
                  },
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
                height: 70,
                child: TextButton(
                  onPressed: () {
                    calculateVal("=");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 166, 2),
                  ),
                  child: Text(
                    "=",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String screenTxt = '0';
  num val1 = 0;
  num val2 = 0;
  int length = 0;
  String operator = "";

  void userInput(String btnText) {
    if (screenTxt != "0" && btnText != "backSpace") {
      screenTxt += btnText;
    } //if (screenTxt != "0" && btnText != "backSpace")

    else if (btnText == "backSpace") {
      var str = screenTxt;
      length = str.length;

      if (length > 0) {
        screenTxt = str.substring(0, length - 1);
        setState(() {
          screenTxt = screenTxt;
        }); //setState(())
      } //(length > 0)

      if (length == 1) {
        setState(() {
          screenTxt = "0";
        }); //setState(())
      } //if (length == 1)

    } //else if (btnText == "backSpace")

    else if (btnText != "backSpace") {
      screenTxt = btnText;
    } //else if (btnText != "backSpace")
  }

  void calculateVal(String userInput) {
    //check user input of operator
    switch (userInput) {
      case "*":
        operator = userInput;
        val1 = num.parse(screenTxt);
        setState(() {
          screenTxt = "0";
        });
        break;
      case "/":
        operator = userInput;
        val1 = num.parse(screenTxt);
        setState(() {
          screenTxt = "0";
        });
        break;
      case "+":
        operator = userInput;
        val1 = num.parse(screenTxt);
        setState(() {
          screenTxt = "0";
        });
        break;
      case "-":
        operator = userInput;
        val1 = num.parse(screenTxt);
        setState(() {
          screenTxt = "0";
        });
        break;
      case "=":
        //operation
        switch (operator) {
          case "*":
            val2 = num.parse(screenTxt);

            setState(() {
              val1 = val1 * val2;
              displayResult(val1);
            });
            break;
          case "/":
            val2 = num.parse(screenTxt);

            setState(() {
              val1 = val1 / val2;
              displayResult(val1);
            });
            break;
          case "+":
            val2 = num.parse(screenTxt);

            setState(() {
              val1 = val1 + val2;
              displayResult(val1);
            });
            break;
          case "-":
            val2 = num.parse(screenTxt);

            setState(() {
              val1 = val1 - val2;
              displayResult(val1);
            });
            break;
          default:
        }
        break;
      default:
    }
  }

//function to refresh
  void refresh() {
    val1 = 0;
    val2 = 0;
    length = 0;
    screenTxt = "0";
    operator = "";
  }

  //function to check if number has decimal
  void displayResult(num result) {
    num _result;

    _result = result % result.toInt();

    if (_result == 0) {
      _result = result.toInt();
      screenTxt = _result.toString();
    } else {
      screenTxt = result.toString();
    }
  }
}
