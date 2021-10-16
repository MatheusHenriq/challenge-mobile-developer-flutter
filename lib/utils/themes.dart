import 'package:flutter/material.dart';
import 'package:obifilmes/utils/textstyles.dart';

const kLightThemeTextColor = Colors.black;

class Themes {
  static final appLightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(
      headline1: TextStyles.heading1.apply(
        color: kLightThemeTextColor,
      ),
      headline2: TextStyles.heading2.apply(
        color: kLightThemeTextColor,
      ),
      headline3: TextStyles.heading3.apply(
        color: kLightThemeTextColor,
      ),
      headline4: TextStyles.heading4.apply(
        color: kLightThemeTextColor,
      ),
      headline5: TextStyles.heading5.apply(
        color: kLightThemeTextColor,
      ),
      headline6: TextStyles.heading6.apply(
        color: kLightThemeTextColor,
      ),
      subtitle1: TextStyles.subtitle1.apply(
        color: kLightThemeTextColor,
      ),
      subtitle2: TextStyles.subtitle2.apply(
        color: kLightThemeTextColor,
      ),
      bodyText1: TextStyles.bodyText1.apply(
        color: kLightThemeTextColor,
      ),
      bodyText2: TextStyles.bodyText2.apply(
        color: kLightThemeTextColor,
      ),
    ),
    primaryColor: Color(0xff7c7d8f),
    brightness: Brightness.dark,
    highlightColor: Color(0xffffffff),
    hintColor: Color(0xff000000),
    cardColor: Color(0xff020D3F),
  );
}
