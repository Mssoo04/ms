import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/button_color.dart';
import 'package:flutter_application_1/src/ui/components/grey.dart';
import 'package:flutter_application_1/src/ui/components/orange.dart';
import 'package:get/get.dart';

import 'components/black.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: Column(
          children: [
            Expanded(flex: 3, child: _result()),
            Expanded(flex: 7, child: _buttons()),
          ],
        )),
      ),
    );
  }

  Widget _result() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: SelectableText(
          '0',
          style: TextStyle(
              fontSize: 90, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _firstRow(),
        _secondRow(),
        _thirdRow(),
        _fourtRow(),
        _firthRow(),
      ],
    );
  }
}

Widget _firstRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Grey(
            onPressed: () {},
            child: Text('C'),
          ),
          BlackButton(
            type: ,
            onPressed: () {},
            child: '0',
          ),
          Orange(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add,
                color: ButtonColor.white,
                size: 40,
              ),
              activeIcon: Icon(
                CupertinoIcons.add,
                color: ButtonColor.orange,
                size: 40,
              ),
              isClick: false),
        ]),
  );
}

Widget _secondRow() {
  var controller;
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlackButton(
            type: BlackButtonType.SEVEN,
            onPressed: () => controller.pushNumberButton('7'), child: '',
          ),
          BlackButton(
            type: BlackButtonType.EIGHT,
            onPressed: () => controller.pushNumberButton('8'), child: '',
          ),
          BlackButton(
            type: BlackButtonType.NINE,
            onPressed: () => controller.pushNumberButton('9'), child: '',
          ),
      ],
    ),
  );
}

Widget _thirdRow() {
var controller;
return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlackButton(
            type: BlackButtonType.FOUR,
            onPressed: () => controller.pushNumberButton('4'), child: '',
          ),
          BlackButton(
            type: BlackButtonType.FIVE,
            onPressed: () => controller.pushNumberButton('5'), child: '',
          ),
          BlackButton(
            type: BlackButtonType.SIX,
            onPressed: () => controller.pushNumberButton('6'), child: '',
          ),
        ],
      ),
    );}

Widget _fourtRow() {
  var controller;
  BlackButton(
            type: BlackButtonType.ONE,
            onPressed: () => controller.pushNumberButton('1'), child: '',
          );
          BlackButton(
            type: BlackButtonType.TWO,
            onPressed: () => controller.pushNumberButton('2'), child: '',
          );
          BlackButton(
            type: BlackButtonType.THREE,
            onPressed: () => controller.pushNumberButton('3'), child: '',
          );
}

Widget _firthRow() {
  var controller;
  BlackButton(
            type: BlackButtonType.ZER0,
            onPressed: () => controller.pushNumberButton('0'), child: '',
          );
          BlackButton(
            type: BlackButtonType.DOT,
            onPressed: controller.pushDotButton, child: '',
          );
}
