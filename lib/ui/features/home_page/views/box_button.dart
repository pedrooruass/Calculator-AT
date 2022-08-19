import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_pj/application/providers/calculation_provider.dart';
import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class BoxButton extends StatelessWidget {
  final String character;
  bool isCircular;
  int flex;
  Color backgroundColor;
  BoxButton(
    this.character, {
    this.isCircular = false,
    this.flex = 1,
    this.backgroundColor = lightModePrimaryButtonColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<CalculationProvider, DecorationProvider>(
        builder: (context, calculationProvider, decorationProvider, widget) {
      return Expanded(
        flex: flex,
        child: GestureDetector(
          onTap: () {
            print('$character tapped');
            SystemSound.play(SystemSoundType.click);
            if (character.toLowerCase() == 'c') {
              calculationProvider.clear();
            } else if (character == 'z') {
              calculationProvider.addSign();
            } else if (character == '=') {
              calculationProvider.calculate();
            } else if (character == '+') {
              calculationProvider.saveOperation(character);
            } else if (character == '-') {
              calculationProvider.saveOperation(character);
            } else if (character == '-') {
              calculationProvider.saveOperation(character);
            } else if (character.toLowerCase() == 'x') {
              calculationProvider.saveOperation('*');
            } else if (character == '%') {
              calculationProvider.saveOperation('%');
              calculationProvider.calculate();
            } else if (character == '/') {
              calculationProvider.saveOperation(character);
            } else {
              calculationProvider.addNumber(character);
            }
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: isCircular
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(15),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  boxShadow: calculationProvider.operation == '*' &&
                          character.toLowerCase() == 'x'
                      ? lightModePressedBoxShadow
                      : calculationProvider.operation ==
                              character // Ver como verificar o X e nao o * // DONEEEEE
                          ? lightModePressedBoxShadow
                          : lightModeNotPressedBoxShadow,
                  borderRadius: isCircular
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(15),
                ),
                child: AutoSizeText(
                  character.toLowerCase() == 'z' ? '+/-' : character,
                  minFontSize: 10,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: decorationProvider.isDarkMode
                        ? Colors.black87
                        : boxButtonColor,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
