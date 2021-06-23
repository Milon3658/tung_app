import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'AppColors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w600),
      bodyText2: TextStyle(fontFamily: "Poppins", fontSize: 14),
      button: TextStyle(
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColours().WHITE),
      headline3: TextStyle(
          fontFamily: "Poppins", fontSize: 25, fontWeight: FontWeight.w600),
      headline4: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headline5: TextStyle(
          fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w600),
      headline6: TextStyle(
          fontFamily: "Poppins", fontSize: 10, fontWeight: FontWeight.w600),
    ),
    appBarTheme: AppBarTheme(
      color: AppColours().WHITE,
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
          headline6: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: AppColours().RED)),
      elevation: 2,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColours().BLACK, size: 36),
    ),
    backgroundColor: AppColours().WHITE,
    scaffoldBackgroundColor: AppColours().WHITE,
  );
}
