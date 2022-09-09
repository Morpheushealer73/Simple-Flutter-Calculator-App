// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:core';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  CalculatorScreen createState() => CalculatorScreen();
}

class CalculatorScreen extends State<MyCalculator> {
  Widget calBtn(String btntxt, double marginLeft, double marginRight) {
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft, top: 0, right: marginRight, bottom: 0),
      height: 70,
      child: TextButton(
        child: Text(
          btntxt,
          style: TextStyle(fontSize: 50),
        ),
        onPressed: () {
          setState(() {
            var str = screenTxt;
            userInput(btntxt);
            if (str.length >= 9) {
              isButtonDisabled = true;
            }
          });
        },
      ),
    );
  }

  Widget calOperatorBtn(
      String operator, double marginLeft, double marginRight) {
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft, top: 0, right: marginRight, bottom: 0),
      height: 70,
      child: TextButton(
        onPressed: () {
          calculateVal(operator);
        },
        child: Text(
          operator,
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            child: TextField(
              textAlign: TextAlign.right,
              readOnly: true,
              decoration: InputDecoration(
                hintText: screenTxt,
              ),
              style: TextStyle(fontSize: 50),
              // ),
            ),
            //child: Text(
            //screenTxt,
            //style: TextStyle(fontSize: 50),
            // ),
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
              calOperatorBtn("/", 5, 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              calBtn("7", 20, 0),
              calBtn("8", 10, 10),
              calBtn("9", 10, 10),
              calOperatorBtn("x", 10, 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              calBtn("4", 20, 0),
              calBtn("5", 10, 10),
              calBtn("6", 10, 10),
              calOperatorBtn("-", 10, 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              calBtn("1", 20, 0),
              calBtn("2", 10, 10),
              calBtn("3", 10, 10),
              calOperatorBtn("+", 10, 20),
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
              calBtn(".", 10, 20),
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
  bool pointTrigger = false;
  bool isButtonDisabled = false;

  void userInput(String btnText) {
    var str = screenTxt;
    length = str.length;

    if (screenTxt != "0" && btnText != "backSpace") {
      //Decimal Point Control
      if (btnText == "." && pointTrigger == false) {
        screenTxt += btnText;
        pointTrigger = true;
      } else if (btnText == ".") {
        screenTxt = screenTxt;
      } else {
        screenTxt += btnText;
      }
    } //if (screenTxt != "0" && btnText != "backSpace")

    else if (btnText == "backSpace") {
      if (length > 0) {
        screenTxt = str.substring(0, length - 1);
        setState(() {
          screenTxt = screenTxt;

          if (str.substring(length - 1, length) == ".") {
            pointTrigger = false;
          }
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
      case "x":
      case "/":
      case "+":
      case "-":
        pointTrigger = false;
        operatorPressed(userInput);
        break;
      case "=":
        pointTrigger = false;
        //operation
        switch (operator) {
          case "x":
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
    } //switch (userInput)
  }

//function to refresh
  void refresh() {
    val1 = 0;
    val2 = 0;
    length = 0;
    screenTxt = "0";
    operator = "";
    pointTrigger = false;
  }

  //function to check if number has decimal
  void displayResult(num result) {
    num calcResult;
    var str = screenTxt;
    length = str.length;

    calcResult = result % result.toInt();

    if (calcResult == 0) {
      calcResult = result.toInt();

      if (result > 999999999) {
        screenTxt = exponentNum(result);
      } else {
        screenTxt = result.toString();
      }
    } else {
      if (result < .999999999) {
        screenTxt = exponentNum(result);
      } else {
        screenTxt = result.toString();
      }
    }
  }

  void operatorPressed(String userInput) {
    operator = userInput;
    val1 = num.parse(screenTxt);
    setState(() {
      screenTxt = "0";
    });
  }

  String exponentNum(num number) {
    return number.toStringAsExponential(3);
  }
}
