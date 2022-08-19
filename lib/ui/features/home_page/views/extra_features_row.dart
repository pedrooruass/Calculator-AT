import 'package:calculator_pj/application/providers/decoration_provider.dart';
import 'package:calculator_pj/domain/resources/colors.dart';
import 'package:calculator_pj/domain/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ExtraFeaturesRow extends StatelessWidget {
  const ExtraFeaturesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DecorationProvider>(
        builder: (context, decorationProvider, widget) {
      return Row(
        children: [
          circleBoxWIcon(
            decorationProvider.isDarkMode
                ? FontAwesomeIcons.lightbulb
                : Icons.dark_mode,
            decorationProvider: decorationProvider,
            boxShadowList: decorationProvider.isDarkMode
                ? darkModePressedBoxShadow
                : lightModeNotPressedBoxShadow,
            onTap: () {
              decorationProvider.switchCurrentTheme();
            },
          ),
          const SizedBox(width: 16),
          circleBoxWIcon(
            Icons.settings,
            decorationProvider: decorationProvider,
            boxShadowList: decorationProvider.isDarkMode
                ? darkModeNotPressedBoxShadow
                : lightModeNotPressedBoxShadow,
            onTap: () {},
          ),
          Expanded(child: Container()),
          circleBoxWIcon(
            Icons.font_download_rounded,
            decorationProvider: decorationProvider,
            boxShadowList: decorationProvider.isDarkMode
                ? decorationProvider.darkModeCurrentPressShadow
                : decorationProvider.lightModeCurrentPressShadow,
            onTap: () {
              if (decorationProvider.currentFont == primaryFont) {
                decorationProvider.changeFont(secondaryFont);
              } else {
                decorationProvider.changeFont(primaryFont);
              }
              decorationProvider.switchCurrentPressShadow();
            },
            onLongPress: () {
              decorationProvider.changeFont(tertiaryFont);
            },
          ),
        ],
      );
    });
  }

  Widget circleBoxWIcon(
    IconData icon, {
    required void Function() onTap,
    void Function()? onLongPress,
    required DecorationProvider decorationProvider,
    required List<BoxShadow> boxShadowList,
  }) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: decorationProvider.isDarkMode
              ? darkModeBackgroundColor
              : lightModeBackgroundColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: boxShadowList,
        ),
        child: Icon(
          icon,
          color: decorationProvider.isDarkMode
              ? darkModeSecondaryTextColor
              : lightModeSecondaryTextColor,
        ),
      ),
    );
  }
}
