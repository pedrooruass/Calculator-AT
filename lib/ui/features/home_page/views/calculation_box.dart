import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculator_pj/application/providers/calculation_provider.dart';
import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Shows the box of the calculation and it's result.
class CalculationBox extends StatelessWidget {
  const CalculationBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<CalculationProvider, DecorationProvider>(
        builder: (context, calculationProvider, decorationProvider, widget) {
      return Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomRight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: decorationProvider.isDarkMode
              ? darkModeBackgroundColor
              : lightModeBackgroundColor,
          boxShadow: decorationProvider.isDarkMode
              ? darkModeCalculationBoxShadow
              : lightModeCalculationBoxShadow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Later make it appear what calculation is asking for.
            // const AutoSizeText(
            //   "Calculation Numbers",
            //   maxLines: 1,
            //   style: TextStyle(
            //     fontSize: 20,
            //     color: lightModeSecondaryTextColor,
            //   ),
            // ),
            // const SizedBox(
            //   height: 4,
            // ),
            AutoSizeText(
              calculationProvider.showNumber,
              maxLines: 1,
              style: TextStyle(
                color: decorationProvider.isDarkMode
                    ? darkModePrimaryTextColor
                    : lightModePrimaryTextColor,
                fontSize: 45,
              ),
            ),
          ],
        ),
      );
    });
  }
}
