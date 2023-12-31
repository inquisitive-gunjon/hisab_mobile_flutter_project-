import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../provider/expanseProvider.dart';
import 'package:intl/intl.dart';
import '../../utils/app_constant.dart';
import 'ExpanseList.dart';
import 'addData.dart';
class ExpanseDetails extends StatelessWidget {
  const ExpanseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String currentMonth = DateFormat('MMMM').format(DateTime.now());
    final dd=Provider.of<DataDialogue>(context,);
    final ep=Provider.of<ExpenseProvider>(context,);
    double totalAmount=ep.getAddedMoney();
    double totalExpanse=ep.getTotalExpense();
    double availableMoney=(totalAmount -totalExpanse);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor:Color(0xFF212427),
      appBar: AppBar(
        backgroundColor:Color(0xFF141313),
        title: Text(currentMonth,style: AppConst.appTextStyle,),
      ),
      body: Column(
        children: [
          Container(
            height: 150.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0,left: 0,right: 0,
                  child: Container(
                    height: 125.h,
                    decoration:const BoxDecoration(
                        color: Color(0xFF141313),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                        )
                    ) ,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w,top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width: 148.w,
                                    child: Text('Money Added',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text(" $totalAmount",style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.blue,)
                              ],
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(top: 15.h),
                            child: SizedBox(
                              height: 19.h,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width:148.w,child: Text('Total Expanse',style: AppConst.appTextStyle,)),
                                  Text(' : ',style: AppConst.appTextStyle,),
                                  Text(" $totalExpanse ",style: AppConst.appTextStyle,),
                                  Container(width: 1.w,color: Colors.red,)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(top: 15.h),
                            child: SizedBox(
                              height: 19.h,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 148.w,
                                      child: Text('Available Balance',style: AppConst.appTextStyle,)),
                                  Text(' : ',style: AppConst.appTextStyle,),
                                  Text("$availableMoney",style: AppConst.appTextStyle,),
                                  Container(width: 1.w,color: Colors.green,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
                Positioned(
                  left: 200.w,
                    top: 105.h,
                  child: InkWell(
                    onTap: (){
                      dd.showAddMoneyBottomSheet(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient:const LinearGradient(
                            begin:  Alignment(0.71, -0.71),
                            end:  Alignment(-0.71, 0.71),
                            colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
                        ),
                      ),
                      height:42.h,width: 152.w,
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Create Wallet',style: AppConst.appButtonTextStyle,),
                          Padding(
                            padding: EdgeInsets.only(left:5.w),
                            child: Text('+',style: TextStyle(fontSize: 17.sp),),
                          )
                        ],

                      )),
                  ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:20.h,left: 15.w,right: 15.w),
            child: Container(
              height: 150.h,
              decoration:const BoxDecoration(
                  // color: AppConst.appBackgroundColor,
                color: Color(0xFF2B2F33),
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(9),
                    topLeft: Radius.circular(9),
                    bottomLeft: Radius.circular(9),
                    bottomRight: Radius.circular(9),
                  )
              ) ,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w,top: 10.h),
                child: InkWell(
                  onTap: (){  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom ),
                          child: const ExpanseList(),
                        ),
                      );
                    },
                  );

                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text('Monthly Transaction',style: AppConst.appMonthNameTextStyle,),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 10.h),
                          child: Container(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width: 148.w,
                                    child: Text('Money Added',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text('$totalAmount',style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.blue,)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 15.h),
                          child: SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width:148.w,child: Text('Total Expanse',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text('$totalExpanse',style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.red,)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 15.h),
                          child: SizedBox(
                            height: 19.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    width: 148.w,
                                    child: Text('Available Balance',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text('$availableMoney',style: AppConst.appTextStyle,),
                                Container(width: 1.w,color: Colors.green,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
