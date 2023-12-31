import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class App_Header extends StatelessWidget {
  const App_Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:EdgeInsets.only(top: 38.0),
          child: Image.asset('assets/icon/HISHAB.png',width: 202.89.w,height: 46.03.h,),
        ),
        Image.asset('assets/icon/appsicon.png',width: 50.48.w,height: 95.92.w,)
      ],
    );
  }
}