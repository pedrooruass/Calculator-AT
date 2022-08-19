import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/domain/resources/breakpoints.dart';
import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:calculator_pj/ui/features/home_page/views/calculation_box.dart';
import 'package:calculator_pj/ui/features/home_page/views/extra_features_row.dart';
import 'package:calculator_pj/ui/features/home_page/views/number_box_board.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<DecorationProvider>(
        builder: (context, decorationProvider, widget) {
      return Scaffold(
        backgroundColor: decorationProvider.isDarkMode
            ? darkModeBackgroundColor
            : lightModeBackgroundColor,
        // backgroundColor: Colors.purple,
        body: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: decorationProvider.isDarkMode
                  ? darkModeBackgroundColor
                  : lightModeBackgroundColor,
              width: tabletBreakpoint,
              child: Column(
                children: const [
                  Expanded(
                    flex: 12,
                    child: CalculationBox(),
                  ),
                  SizedBox(height: 38),
                  Expanded(
                    flex: 3,
                    child: ExtraFeaturesRow(),
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    flex: 40,
                    child: NumberBoxBoard(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
