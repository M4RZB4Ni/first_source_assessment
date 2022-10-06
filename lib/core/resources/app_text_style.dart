import 'dart:ui' as ui;
import 'package:first_source_assessment/core/resources/app_color_extension.dart';
import 'package:first_source_assessment/core/resources/app_size.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const String mierA = 'MierA';
  static const String sharpGrotesk = 'SharpGrotesk';

  // new ui styles

  static final label01 = TextStyle(
    fontSize: 56 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.sec02,
  );

  static final label02 = TextStyle(
    fontSize: 67 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.sec02,
  );

  static final label03 = TextStyle(
    fontSize: 108 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final label04 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final label05 = TextStyle(
    fontSize: 80 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final dis01 = TextStyle(
    fontSize: 26 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final dis02 = TextStyle(
    fontSize: 41 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.sec06,
  );

  static final headline01 = TextStyle(
    fontSize: 40 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final b01 = TextStyle(
    fontSize: 35 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.white,
  );

  static final b02 = TextStyle(
    fontSize: 23 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    color: AppColors.black,
  );

  static final b03 = TextStyle(
    fontSize: 16 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.back02,
  );

  // end new ui styles

//headers
  static final header1 = TextStyle(
    fontSize: 48 / ui.window.textScaleFactor,
    fontFamily: mierA,
    color: AppColors.sec02,
  );

  static final header2 = TextStyle(
    fontSize: 36 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec02,
  );

  static final header3 = TextStyle(
    fontSize: 36 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w500,
    color: AppColors.sec02,
  );

  static final header4 = TextStyle(
    fontSize: 48 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w500,
    color: AppColors.sec02,
    height: AppSize.s48,
  );

  static final header5 = TextStyle(
    fontSize: 60 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w400,
    color: AppColors.sec02,
  );

//end headers

//body

  static final body1 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec03,
  );

  static final body2 = TextStyle(
    fontSize: 24 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec03,
  );

  static final body3 = TextStyle(
    fontSize: 28 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec03,
  );

  static final body4 = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w700,
    color: AppColors.sec03,
  );

  static final body5 = TextStyle(
    fontSize: 18 / ui.window.textScaleFactor,
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    color: AppColors.sec03,
  );

  static final curvedButton = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    fontFamily: sharpGrotesk,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );

  static final customerTitle = TextStyle(
    fontSize: 20 / ui.window.textScaleFactor,
    fontWeight: FontWeight.w300,
  );

  static final customerRecentFormula = TextStyle(
    fontSize: 12 / ui.window.textScaleFactor,
    color: AppColors.white,
    height: 1.63,
  );

  static final customerHeader = TextStyle(
    fontFamily: mierA,
    fontWeight: FontWeight.w400,
    fontSize: 13 / ui.window.textScaleFactor,
    color: AppColors.sec02,
  );

  static final customerRowYuv = TextStyle(
    fontFamily: mierA,
    fontSize: 12 / ui.window.textScaleFactor,
    fontWeight: FontWeight.w300,
    color: AppColors.sec02,
  );

  static final customerRowFullName = TextStyle(
    fontFamily: mierA,
    fontSize: 14 / ui.window.textScaleFactor,
    fontWeight: ui.FontWeight.w500,
    color: AppColors.sec02,
  );

  static final colorTitle = TextStyle(
    fontSize: 26 / ui.window.textScaleFactor,
    fontWeight: FontWeight.w300,
    fontFamily: mierA,
    color: AppColors.sec02,
  );

  static final colorSubtitle = TextStyle(
    color: AppColors.p02,
    fontSize: 14 / ui.window.textScaleFactor,
    fontWeight: FontWeight.w300,
  );

  static final colorCustomerFullName = TextStyle(
    fontSize: 12 / ui.window.textScaleFactor,
    fontWeight: ui.FontWeight.w400,
    color: AppColors.sec02,
  );

  static final appBarTitle = TextStyle(
    fontSize: 20 / ui.window.textScaleFactor,
    fontWeight: FontWeight.w500,
  );

  static final appBarSubtitle =
      TextStyle(fontSize: 10 / ui.window.textScaleFactor);

  static final appBarTextAction = TextStyle(
    fontSize: 10 / ui.window.textScaleFactor,
    color: AppColors.sec03,
  );

  static TextStyle itemDialogTitle = TextStyle(
    fontSize: 18 / ui.window.textScaleFactor,
    color: AppColors.sec03,
    fontWeight: FontWeight.bold,
  );



  static TextStyle itemDialogItemText =
      TextStyle(fontSize: 16 / ui.window.textScaleFactor);

  static TextStyle inputRequiredTitle =
      TextStyle(fontSize: 14 / ui.window.textScaleFactor);

  static TextStyle inputRequiredStar =
      TextStyle(fontSize: 12 / ui.window.textScaleFactor);

  static TextStyle alertDialogTitle = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    color: AppColors.sec03,
    fontWeight: FontWeight.bold,
    height: 1.75,
  );



  static TextStyle alertDialogAction = TextStyle(
    fontSize: 12 / ui.window.textScaleFactor,
    fontWeight: FontWeight.bold,
    color: AppColors.sec02,
  );

  static TextStyle switcherTitle =
      TextStyle(fontSize: 17 / ui.window.textScaleFactor);

  static TextStyle switcherSubtitle =
      TextStyle(fontSize: 13 / ui.window.textScaleFactor);

  static TextStyle bottomSheetTitle = TextStyle(
    fontSize: 16 / ui.window.textScaleFactor,
    color: AppColors.sec03,
    fontWeight: FontWeight.bold,
    height: 1.75,
  );


  static TextStyle bottomSheetContent = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    color: AppColors.sec03,
  );

  static TextStyle bottomSheetContentBold = TextStyle(
    fontSize: 14 / ui.window.textScaleFactor,
    color: AppColors.sec03,
    fontWeight: FontWeight.bold,
  );

  static final dropDownTitle =
      TextStyle(fontSize: 18 / ui.window.textScaleFactor);

  static final snackBarMessage = TextStyle(
    fontSize: 16 / ui.window.textScaleFactor,
    color: AppColors.white,
  );

  static final bottomSheetRemoveUploadedFile = TextStyle(
    fontSize: 12 / ui.window.textScaleFactor,
    color: AppColors.error,
  );
}
