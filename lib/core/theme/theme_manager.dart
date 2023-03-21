import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:hypermart/core/functions/hex_color.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    // theme mode
    brightness: Brightness.light,
    //
    scaffoldBackgroundColor: HexColor('#fafafa'),

    colorScheme: ThemeData().colorScheme.copyWith(
          primary: ColorManager.primaryRed,
        ),

    // primary color
    primaryColor: ColorManager.primaryGrey,
    // appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: FontManager.boldStyle,
    ),
    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        minimumSize: const Size(50, 30),
        textStyle: FontManager.boldStyle,
        padding: const EdgeInsets.all(15),
        backgroundColor: ColorManager.primaryRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      // margin: const EdgeInsets.all(0),
      elevation: 5,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      hintStyle: FontManager.smallBoldStyle,
      labelStyle: FontManager.smallBoldStyle,
      fillColor: ColorManager.textFaild,
      filled: true,

      /// enabled border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        // gapPadding: 30,
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),
    ),
  );
}
