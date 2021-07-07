
import 'package:call_api_bloc/commons/constant/size_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_constant.dart';

class AppConstant {
  static TextStyle appBar = TextStyle(fontSize: SizeConst.size23, color: ColorConstant.white);

  static TextStyle hintSearch = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.grey);
  static TextStyle search = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.black);
  static TextStyle typeNews = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.colorPrimary, fontWeight: medium);
  static TextStyle titleNews = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.black, fontWeight: medium);
  static TextStyle timeNews = TextStyle(
    fontSize: SizeConst.size16,
    color: ColorConstant.black.withOpacity(0.7),
  );
  static TextStyle titleSeeAll = TextStyle(fontSize: SizeConst.size16, color: ColorConstant.colorPrimary, fontWeight: medium);

  static TextStyle nameDrawer = TextStyle(
    fontSize: SizeConst.size22,
    color: ColorConstant.white,
    fontWeight: bold,
  );
  static TextStyle departmentDrawer = TextStyle(fontSize: SizeConst.size17, color: ColorConstant.white);
  static TextStyle itemDrawer = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.white);
  static TextStyle selected = TextStyle(
    color: ColorConstant.white,
    fontSize: SizeConst.size18,
    fontWeight: medium,
  );
  static TextStyle unselected = TextStyle(
    color: ColorConstant.white,
    fontSize: SizeConst.size15,
    fontWeight: medium,
  );

  static TextStyle titleNotify = TextStyle(
    fontSize: SizeConst.size18,
    color: ColorConstant.textBlue,
    fontWeight: medium,
  );

  static TextStyle hint = TextStyle(
    fontSize: SizeConst.size18,
    color: ColorConstant.textGrey,
    fontWeight: regular,
  );
  
  static TextStyle textWithOpacity = TextStyle(
    fontSize: SizeConst.size18,
    color: ColorConstant.textGrey.withOpacity(0.7),
    fontWeight: regular,
  );
  static TextStyle hintFormField = TextStyle(
    fontSize: SizeConst.size16,
    color: ColorConstant.textGrey,
    fontWeight: regular,
  );

  static TextStyle style = TextStyle(
    fontSize: SizeConst.size18,
    color: ColorConstant.black,
    fontWeight: regular,
  );

  static TextStyle button = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.white, fontWeight: bold);
  static TextStyle btnLogin = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.white, fontWeight: bold);

  static TextStyle typeQuestion = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.footerLogin);

  static TextStyle type = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.colorPrimary, fontWeight: bold);

  static TextStyle typeMedium = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.colorPrimary, fontWeight: medium);
  static TextStyle typeBold = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.colorPrimary, fontWeight: bold);
  static TextStyle typeBold22 = TextStyle(fontSize: SizeConst.size22, color: ColorConstant.colorPrimary, fontWeight: bold);

  static TextStyle typeRegularBlack = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.black, fontWeight: regular);
  static TextStyle typeRegular20 = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.black, fontWeight: regular);
  static TextStyle typeRegularGrey = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.grey, fontWeight: regular);

  static TextStyle category = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.colorPrimary, fontWeight: bold);

  static TextStyle textBlue = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.textBlue);

  static TextStyle textBlueMeet = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.textBlueBold, fontWeight: bold);

  static TextStyle textBlueDate = TextStyle(fontSize: SizeConst.size20, color: ColorConstant.textBlueBold, fontWeight: bold);
  static TextStyle textBlueRegulation = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.textBlueBold, fontWeight: regular);

  static TextStyle userAnswer = TextStyle(fontSize: SizeConst.size16, color: ColorConstant.footerLogin);

  static TextStyle textBlueAccent = TextStyle(fontSize: SizeConst.size16, color: ColorConstant.blueAccent, fontWeight: medium);
  static TextStyle textGreenMeet = TextStyle(fontSize: SizeConst.size16, color: ColorConstant.textGreen, fontWeight: medium);
  static TextStyle textGreenTotal = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.textGreen, fontWeight: medium);
  static TextStyle textRedTotal = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.red, fontWeight: medium);
  static TextStyle textMeet = TextStyle(fontSize: SizeConst.size17, color: ColorConstant.black, fontWeight: regular);
  static TextStyle textTotal = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.black, fontWeight: regular);
  static TextStyle textBlackDoc = TextStyle(fontSize: SizeConst.size18, color: ColorConstant.black, fontWeight: medium);
  static TextStyle tabBar = TextStyle(fontSize: SizeConst.size18, fontWeight: bold, color: ColorConstant.white);

  static TextStyle number = TextStyle(fontSize: SizeConst.size22, fontWeight: bold, color: ColorConstant.white);

  static TextStyle date1 = TextStyle(fontSize: SizeConst.size20, fontWeight: bold, color: ColorConstant.white);

  static TextStyle date2 = TextStyle(fontSize: SizeConst.size18, fontWeight: medium, color: ColorConstant.black);

  static TextStyle month = TextStyle(fontSize: SizeConst.size14, color: ColorConstant.black);

  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight bold = FontWeight.w700;

  static TextStyle error = TextStyle(color: Colors.red, fontWeight: medium, fontSize: SizeConst.size16);
  static TextStyle styleCalendar = TextStyle(color: ColorConstant.calendar1, fontWeight: bold, fontSize: SizeConst.size15);
}
