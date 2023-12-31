import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/widgets/custom_text_from_field.dart';

class CreateWallet extends StatelessWidget {
     CreateWallet({
    super.key,
  });
  final TextEditingController _categoryName=TextEditingController();
  final TextEditingController _addBalance=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 400.h,
      decoration: BoxDecoration(
        color:const Color(0xFF212427),
        borderRadius: BorderRadius.circular(20),
        border:const Border(
          left: BorderSide(color: Color(0xFF454C54)),
          top: BorderSide(width: 1, color: Color(0xFF454C54)),
          right: BorderSide(color: Color(0xFF454C54)),
          bottom: BorderSide(color: Color(0xFF454C54)),
        ),
        boxShadow:const [
          BoxShadow(
            color: Color(0x261B98D6),
            blurRadius: 30,
            offset: Offset(0, -2),
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        children: [
          Padding(
            padding:EdgeInsets.only(top:30.h,),
            child: Center(child: Text('Create Wallet',style: AppConst.appCreateWallet,)),
          ),
          Padding(
            padding:EdgeInsets.only(top: 30.h),
            child: CustomTextFormField(nameOfController: _categoryName, yourFieldText: 'Category Name', keyBoardType: TextInputType.name, hintText: 'Write Your Category'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: CustomTextFormField(nameOfController: _addBalance, yourFieldText: 'Add Balance', keyBoardType: TextInputType.number, hintText: 'Add Balance'),
          ),
          Padding(padding: EdgeInsets.only(top: 50.h,left:15.w,right: 15.w ),
            child:InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 42.h,
                width: 330.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient:const LinearGradient(
                    begin: Alignment(1.00, 0.00),
                    end: Alignment(-1, 0),
                    colors: [Color(0xFF1B9CD9), Color(0xFF2A41A2)],
                  )
                ),
                child: Center(child: Text('Create',style: AppConst.appButtonTextStyle,)),
              ),
            ) ,)
        ],
      ),
    );
  }
}