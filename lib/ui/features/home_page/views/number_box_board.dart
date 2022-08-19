import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:calculator_pj/ui/features/home_page/views/board_row.dart';
import 'package:flutter/material.dart';

class NumberBoxBoard extends StatelessWidget {
  const NumberBoxBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BoardRow(
          'C',
          'z', // esse e o '-' soq de negativo e nao de subtracao,
          '%',
          '/',
          lightModeColor1: lightModeSecondaryButtonColor,
          lightModeColor2: lightModeSecondaryButtonColor,
          lightModeColor3: lightModeSecondaryButtonColor,
          darkModeColor1: darkModeSecondaryButtonColor,
          darkModeColor2: darkModeSecondaryButtonColor,
          darkModeColor3: darkModeSecondaryButtonColor,
        ),
        BoardRow('7', '8', '9', 'X'),
        BoardRow('4', '5', '6', '-'),
        BoardRow('1', '2', '3', '+'),
        LastBoardRow('0', '.', '=', '')
      ],
    );
  }
}
