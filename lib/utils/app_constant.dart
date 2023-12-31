import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConst{
  static Color appBackgroundColor=const Color(0xff212427);
  static Color appTFFBorderColor=const Color(0xFF2B2F33);
  static TextStyle appTFFStyle=TextStyle(
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
  static TextStyle appTFFHintStyle=TextStyle(
    color: const Color(0xFF898B8E),
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle appTableDataStyle=TextStyle(
    color: const Color(0xFFffffff),
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle appTextStyle=TextStyle(
    color: const Color(0xffffffff),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 0,
  );
  static TextStyle appButtonTextStyle=TextStyle(
    color: const Color(0xffffffff),
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static TextStyle appTableHeaderTextStyle=TextStyle(
    color: const Color(0xffffffff),
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static TextStyle appMonthNameTextStyle=TextStyle(
    fontSize: 18.sp,color:const Color(0xffffffff),fontWeight: FontWeight.w400
  );
  static TextStyle appCreateWallet=TextStyle(
      fontSize: 18.sp,color:const Color(0xffffffff),fontWeight: FontWeight.w700
  );
  static TextStyle hisabTextStyle=TextStyle(
    color: const Color(0xffffffff),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 0,
  );
  static TextStyle navBarTextStyle=TextStyle(
    color: const Color(0xffffffff),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 0,
  );

  // static ElevatedButtonTheme elevatedButtonTheme=ElevatedButtonTheme(data: data, child: child)
}