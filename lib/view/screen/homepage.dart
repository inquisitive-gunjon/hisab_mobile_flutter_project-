import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/widgets/addData.dart';
import 'package:hisab/view/widgets/circularProgressIndicator.dart';
import 'package:hisab/view/widgets/viewDetails.dart';
import 'package:provider/provider.dart';
import '../../provider/expanseProvider.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    final dd=Provider.of<DataDialogue>(context,);
    final ep=Provider.of<ExpenseProvider>(context,);
    double totalAmount=ep.getAddedMoney();
    double totalExpanse=ep.getTotalExpense();
    double availableMoney=(totalAmount -totalExpanse);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppConst.appTFFBorderColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConst.appBackgroundColor,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child:Text('Total Hishab',style: AppConst.appTextStyle,),
        ),
      ),
      body: ListView(
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
                    ) ,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w,top: 10.h),
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
                                    child: Text('Total Money Added',style: AppConst.appTextStyle,)),
                                Text(' : ',style: AppConst.appTextStyle,),
                                Text("$totalAmount ",style: AppConst.appTextStyle,),
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
                                  Text("$totalExpanse",style: AppConst.appTextStyle,),
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
          ///neddedddddddd    ring \\\\\\\\\\\\\
          Padding(
            padding: EdgeInsets.only(top:30.h),
            child: Container(height:271.h,width: 390.w,color: AppConst.appTFFBorderColor,
                      child: Padding(
                        padding: EdgeInsets.only(left:10.w,top: 10.h),
                        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Month Name',style:AppConst.appMonthNameTextStyle,),

              Padding(
                padding: EdgeInsets.only(top:20.h),
                  child: Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left: 0.w),
                        child: RingProgressWidget(addMoney: totalAmount,color:Colors.blueAccent),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 20.w),
                        child:RingProgressWidget(addMoney: totalExpanse,color:Colors.redAccent),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 20.w),
                        child:RingProgressWidget(addMoney: availableMoney,color:Colors.greenAccent),
                      ),

                    ],
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.h),
              child:Row(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 10.w),
                    child: Text('Monthly Added',style: AppConst.hisabTextStyle, ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: 50.w),
                    child: Text('Expanse',style: AppConst.hisabTextStyle, ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: 40.w),
                    child: Text('Available Balance',style: AppConst.hisabTextStyle, ),
                  ),
                ],
              ) ,
              ),
              Padding(padding: EdgeInsets.only(top: 1.h),
              child: Row(
                children: [
                Padding(
                  padding: EdgeInsets.only(left:82.w),
                  child: Container(
                            width: 15.w,
                            height: 2.h,
                            color: Colors.blue,
                          ),
                ),  Padding(
                    padding: EdgeInsets.only(left:84.w),
                    child: Container(
                      width: 15.w,
                      height: 2.h,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:127.w),
                    child: Container(
                      width: 15.w,
                      height: 2.h,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 27.h),
                child: Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: 10.w),
                      child: InkWell(
                        child: Container(
                          height: 42.h,
                          width: 152.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:Color(0xFF2B2F33),
                            border: Border.all(width: 1,color: Colors.blue)
                          ),
                          child: Center(
                            child: Text('View',style: AppConst.appButtonTextStyle,),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpanseDetails()));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: InkWell(
                        child: Container(
                          height: 42.h,
                          width: 152.w,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              begin:  Alignment(0.71, -0.71),
                              end:  Alignment(-0.71, 0.71),
                              colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
                            ),
                          ),
                          child: Center(
                            child: Text('Add Expanse +',style: AppConst.appButtonTextStyle,),
                          ),
                        ),
                        onTap: (){
                          dd.showAddExpenseBottomSheet(context);

                          },
                      ),
                    ),

                  ],
                ),
              )
            ],
                        ),
                      ),

                      ),
          )
        ],
      ),
    );
  }

}





