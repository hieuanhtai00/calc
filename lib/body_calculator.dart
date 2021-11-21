import 'dart:ui';

import 'package:flutter/material.dart';

import 'button_calculator.dart';

ButtonNumberCalculator butc = ButtonNumberCalculator(number: 'C');
ButtonNumberCalculator but$ = ButtonNumberCalculator(number: '\$');
ButtonNumberCalculator butpercent = ButtonNumberCalculator(number: '%');
ButtonNumberCalculator but7 = ButtonNumberCalculator(number: '7');
ButtonNumberCalculator but8 = ButtonNumberCalculator(number: '8');
ButtonNumberCalculator but9 = ButtonNumberCalculator(number: '9');
ButtonNumberCalculator but4 = ButtonNumberCalculator(number: '4');
ButtonNumberCalculator but5 = ButtonNumberCalculator(number: '5');
ButtonNumberCalculator but6 = ButtonNumberCalculator(number: '6');
ButtonNumberCalculator but1 = ButtonNumberCalculator(number: '1');
ButtonNumberCalculator but2 = ButtonNumberCalculator(number: '2');
ButtonNumberCalculator but3 = ButtonNumberCalculator(number: '3');
ButtonNumberCalculator but0 = ButtonNumberCalculator(number: '0');
ButtonNumberCalculator butdot = ButtonNumberCalculator(number: '.');
ButtonOperatorCalculator butdiv = ButtonOperatorCalculator(operator: '/');
ButtonOperatorCalculator butsub = ButtonOperatorCalculator(operator: '-');
ButtonOperatorCalculator butsum = ButtonOperatorCalculator(operator: '+');
ButtonOperatorCalculator butmul = ButtonOperatorCalculator(operator: '*');
ButtonOperatorCalculator butequal = ButtonOperatorCalculator(operator: '=');

// ignore: non_constant_identifier_names
Widget RowInputButton(
    {required ButtonNumberCalculator button1,
    required ButtonNumberCalculator button2,
    required ButtonNumberCalculator button3,
    required ButtonOperatorCalculator buttonoperator}) {
  return SizedBox(
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: button1,
            margin: const EdgeInsets.all(10),
          ),
        ),
        Expanded(
          child: Container(
            child: button2,
            margin: const EdgeInsets.all(10),
          ),
        ),
        Expanded(
          child: Container(
            child: button3,
            margin: const EdgeInsets.all(10),
          ),
        ),
        Expanded(
          child: Container(
            child: buttonoperator,
            margin: const EdgeInsets.all(10),
          ),
        ),
      ],
    ),
    height: 70,
    width: 80,
  );
}

// ignore: non_constant_identifier_names
Widget RowInputButtonBottom() {
  return Row(
    children: [
      Expanded(
          child: Container(
            child: but0,
            margin: const EdgeInsets.all(10),
          ),
          flex: 2),
      Expanded(
        child: Container(
          child: butdot,
          margin: const EdgeInsets.all(10),
        ),
      ),
      Expanded(
        child: Container(
          child: butequal,
          margin: const EdgeInsets.all(10),
        ),
      ),
    ],
  );
}

class ButtonInputBar extends StatelessWidget {
  const ButtonInputBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RowInputButton(
            button1: butc,
            button2: but$,
            button3: butpercent,
            buttonoperator: butdiv),
        RowInputButton(
            button1: but7,
            button2: but8,
            button3: but9,
            buttonoperator: butsub),
        RowInputButton(
            button1: but4,
            button2: but5,
            button3: but6,
            buttonoperator: butsum),
        RowInputButton(
            button1: but1,
            button2: but2,
            button3: but3,
            buttonoperator: butmul),
        RowInputButtonBottom(),
      ],
      padding: const EdgeInsets.all(10),
    );
  }
}

class BodyCalculator extends StatelessWidget {
  const BodyCalculator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            child: OutputBar(),
            flex: 8,
          ),
          const Expanded(
            child: ButtonInputBar(),
            flex: 16,
          ),
          const Center(
            child: TextButton(
                onPressed: null,
                child: Text(
                  "EXIT",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
