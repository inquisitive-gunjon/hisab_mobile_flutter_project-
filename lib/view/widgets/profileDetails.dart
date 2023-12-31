import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constant.dart';

class ProfileDetails extends StatelessWidget {
  final dynamic yourFieldText;
  final dynamic text;

  const ProfileDetails({
    super.key, required this.yourFieldText, required this.text,
  }) ;


  @ override
  Widget build(BuildContext context) {
    return Container(
      height: 83.h,
      width: 360.w,
      margin: EdgeInsets.only(left: 15.w,right: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$yourFieldText',style: AppConst.appTFFStyle,),
          Padding(padding:EdgeInsets.only(top:14.55.h ),
            child: Container(
              width: 330.w,
              height: 42.h,
              decoration: BoxDecoration(
                color: AppConst.appTFFBorderColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:EdgeInsets.only(top: 12.h,bottom: 13.h,left: 15.w),
                child: Text('$text',style:AppConst.hisabTextStyle,),
              ),
            ),)
        ],
      ),
    );
  }
}