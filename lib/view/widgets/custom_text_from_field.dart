import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constant.dart';

class CustomTextFormField extends StatelessWidget {
  final dynamic  nameOfController;
  final dynamic yourFieldText;
  final dynamic keyBoardType;
  final dynamic hintText;
  final dynamic onchanged;
  const CustomTextFormField({
    super.key,
    required this.nameOfController, required this.yourFieldText, required this.keyBoardType,required this.hintText, this.onchanged,
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
                padding:EdgeInsets.only(top: 13.h),
                child: TextFormField(
                  onChanged: onchanged,
                  keyboardType: keyBoardType,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: nameOfController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppConst.appTFFBorderColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText:' $hintText ',
                    hintStyle:AppConst.appTFFHintStyle,
                  ),
                ),
              ),
            ),)
        ],
      ),
    );
  }
}