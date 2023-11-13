import 'package:flutter/material.dart';
import 'package:hotels/core/styles_manger.dart';
import 'package:hotels/core/values_manger.dart';

import 'colors_manger.dart';
import 'font_manger.dart';

ThemeData getAppTheme() {
  return ThemeData(
      //mainColors

      primaryColor: ColorsManger.primary,
      primaryColorLight: ColorsManger.lightprimary,
      primaryColorDark: ColorsManger.darkprimary,
      disabledColor: ColorsManger.grey,
      splashColor: ColorsManger.lightprimary,
      //card theme
      cardTheme: CardTheme(
          color: ColorsManger.white,
          shadowColor: ColorsManger.grey,
          elevation: AppSize.s4),
      // app Bar Theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorsManger.primary,
        elevation: AppSize.s4,
        shadowColor: ColorsManger.lightprimary,
        titleTextStyle:
            getRegularStyle(color: ColorsManger.white, fontSize: FontSize.s16),
      ),

      //button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorsManger.grey,
        buttonColor: ColorsManger.primary,
        splashColor: ColorsManger.lightprimary,
      ),

      //elevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorsManger.white, fontSize: FontSize.s18),
              primary: ColorsManger.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s8)))),

      // input docoration theme (text field theme)

      textTheme: TextTheme(
          headlineLarge: getSemiBoldStyle(
              color: ColorsManger.darkGrey, fontSize: FontSize.s16),
          headlineMedium: getBoldStyle(
              color: ColorsManger.dark,
              fontSize: FontSize.s14,
              decoration: TextDecoration.none),
          labelSmall:
              getRegularStyle(color: ColorsManger.lightGrey, fontSize: FontSize.s18),
          labelMedium:
          getMediumStyle(color: ColorsManger.dark, fontSize: FontSize.s18),
          titleMedium: getMediumStyle(
            color: ColorsManger.white,
            fontSize: FontSize.s18,
          ),
          titleSmall: getMediumStyle(
            color: ColorsManger.grey,
            fontSize: FontSize.s14,
          ),
          bodySmall: getSemiBoldStyle(
              color: ColorsManger.dark, fontSize: FontSize.s18),
          bodyLarge: getRegularStyle(color: ColorsManger.grey),
          titleLarge: getBoldStyle(
              color: ColorsManger.darkGrey,
              fontSize: FontSize.s20,
              decoration: TextDecoration.none),
          displayMedium: getRegularStyle(
              color: ColorsManger.lightGrey,
              fontSize: FontSize.s20,
          ),          bodyMedium: getBoldStyle(
              color: ColorsManger.white,
              fontSize: FontSize.s14,
              decoration: TextDecoration.underline),
          displayLarge: getSemiBoldStyle(
              color: ColorsManger.blue, fontSize: FontSize.s20)),

      ///input docorection theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle:
            getRegularStyle(color: ColorsManger.grey, fontSize: FontSize.s14),
        labelStyle:
            getRegularStyle(color: ColorsManger.grey, fontSize: FontSize.s14),

        errorStyle:
            getRegularStyle(color: ColorsManger.error, fontSize: FontSize.s14),

        /// enabled Border Style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManger.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        //focused Border Style
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManger.grey,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),

        ////error Border style

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManger.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManger.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      ));
}
