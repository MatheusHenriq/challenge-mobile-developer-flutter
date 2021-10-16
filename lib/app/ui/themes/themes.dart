import 'package:flutter/material.dart';
import 'package:obifilmes/app/utils/textstyles.dart';

const kLightThemeTextColor = Colors.black;
const kDarkThemeTextColor = Colors.white;

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
    primaryColor: Color(0xffFFE4E1),
    hoverColor: Color(0xffFFE7E1),
    brightness: Brightness.dark,
    highlightColor: Color(0xffffffff),
    hintColor: Color(0xff000000),
    cardColor: Color(0xffB0E0E6),
  );
  static final appDarkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
      headline1: TextStyles.heading1.apply(
        color: kDarkThemeTextColor,
      ),
      headline2: TextStyles.heading2.apply(
        color: kDarkThemeTextColor,
      ),
      headline3: TextStyles.heading3.apply(
        color: kDarkThemeTextColor,
      ),
      headline4: TextStyles.heading4.apply(
        color: kDarkThemeTextColor,
      ),
      headline5: TextStyles.heading5.apply(
        color: kDarkThemeTextColor,
      ),
      headline6: TextStyles.heading6.apply(
        color: kDarkThemeTextColor,
      ),
      subtitle1: TextStyles.subtitle1.apply(
        color: kDarkThemeTextColor,
      ),
      subtitle2: TextStyles.subtitle2.apply(
        color: kDarkThemeTextColor,
      ),
      bodyText1: TextStyles.bodyText1.apply(
        color: kDarkThemeTextColor,
      ),
      bodyText2: TextStyles.bodyText2.apply(
        color: kDarkThemeTextColor,
      ),
    ),
    primaryColor: Color(0xff2C2624),
    hoverColor: Color(0xff45342F),
    brightness: Brightness.light,
    highlightColor: Color(0xff000000),
    hintColor: Color(0xffffffff),
    cardColor: Color(0xff445C5C),
  );
}
