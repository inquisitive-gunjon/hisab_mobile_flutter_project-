import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    required this.dividerText
  });
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
            child: Divider(
                color: Color(0xFFBCE2EF),
                thickness: 0.5,
                indent: 5,
                endIndent: 10)),
        Padding(
          padding: EdgeInsets.only(left:10.w,right: 10.w),
          child: Text(dividerText,style: AppConst.appTFFStyle),
        ),
        const Flexible(
            child: Divider(
                color: Color(0xFFBCE2EF),
                thickness: 0.5,
                indent: 5,
                endIndent: 10)),
      ],
    );
  }
}