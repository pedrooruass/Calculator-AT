import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:calculator_pj/ui/features/home_page/views/box_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardRow extends StatelessWidget {
  final String character1;
  final String character2;
  final String character3;
  final String character4;
  Color lightModeColor1;
  Color lightModeColor2;
  Color lightModeColor3;
  Color lightModeColor4;
  Color darkModeColor1;
  Color darkModeColor2;
  Color darkModeColor3;
  Color darkModeColor4;
  BoardRow(
    this.character1,
    this.character2,
    this.character3,
    this.character4, {
    this.lightModeColor1 = lightModePrimaryButtonColor,
    this.lightModeColor2 = lightModePrimaryButtonColor,
    this.lightModeColor3 = lightModePrimaryButtonColor,
    this.lightModeColor4 = lightModeSecondaryButtonColor,
    this.darkModeColor1 = darkModePrimaryButtonColor,
    this.darkModeColor2 = darkModePrimaryButtonColor,
    this.darkModeColor3 = darkModePrimaryButtonColor,
    this.darkModeColor4 = darkModeSecondaryButtonColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DecorationProvider>(
        builder: (context, decorationProvider, widget) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoxButton(
                character1,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor1
                    : lightModeColor1,
              ),
              BoxButton(
                character2,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor2
                    : lightModeColor2,
              ),
              BoxButton(
                character3,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor3
                    : lightModeColor3,
              ),
              BoxButton(
                character4,
                isCircular: true,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor4
                    : lightModeColor4,
              ),
            ],
          ),
        ),
      );
    });
  }
}

class LastBoardRow extends BoardRow {
  LastBoardRow(
    String character1,
    String character2,
    String character3,
    String character4, {
    Color lightModeColor1 = lightModePrimaryButtonColor,
    Color lightModeColor2 = lightModePrimaryButtonColor,
    Color lightModeColor3 = lightModePrimaryButtonColor,
    Color lightModeColor4 = lightModeSecondaryButtonColor,
    Color darkModeColor1 = darkModePrimaryButtonColor,
    Color darkModeColor2 = darkModePrimaryButtonColor,
    Color darkModeColor3 = darkModePrimaryButtonColor,
    Color darkModeColor4 = darkModeSecondaryButtonColor,
    Key? key,
  }) : super(
          key: key,
          character1,
          character2,
          character3,
          character4,
          lightModeColor1: lightModeColor1,
          lightModeColor2: lightModeColor1,
          lightModeColor3: lightModeColor1,
          lightModeColor4: lightModeColor1,
          darkModeColor1: darkModeColor1,
          darkModeColor2: darkModeColor2,
          darkModeColor3: darkModeColor3,
          darkModeColor4: darkModeColor4,
        );

  @override
  Widget build(BuildContext context) {
    return Consumer<DecorationProvider>(
        builder: (context, decorationProvider, widget) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              BoxButton(
                character1,
                flex: 2,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor1
                    : lightModeColor1,
              ),
              BoxButton(
                character2,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeColor2
                    : lightModeColor2,
              ),
              BoxButton(
                character3,
                isCircular: true,
                backgroundColor: decorationProvider.isDarkMode
                    ? darkModeThirdButtonColor
                    : lightModeThirdButtonColor,
              ),
            ],
          ),
        ),
      );
    });
  }
}
