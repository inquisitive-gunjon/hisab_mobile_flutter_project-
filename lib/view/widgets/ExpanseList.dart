import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/expanseProvider.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
class ExpanseList extends StatelessWidget {
  const ExpanseList({super.key});

  @override
  Widget build(BuildContext context) {
    final ep=Provider.of<ExpenseProvider>(context);
    return Container(
      width: 360.w,
      height: 450.h,
        decoration:BoxDecoration(
          // color: AppConst.appBackgroundColor,
            color: Color(0xFF212427),
            borderRadius: BorderRadius.only(
              topRight:Radius.circular(10),
              topLeft: Radius.circular(10),
              // bottomLeft: Radius.circular(9),
              // bottomRight: Radius.circular(9),
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:EdgeInsets.only(left: 15.w,bottom: 9.h),
              child: Text('Expanse List',style:TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700
              ),),
            ),
            ///Data table upper \\\
            Container(
              height: 42.h,
              width: 360.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                gradient:  LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF1C94D4), Color(0xFF274BA8)],
                ),
              ),
              child: Row(

                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 12.w),
                    child: SizedBox(width:32.w ,child: Text('Date',style: AppConst.appTableHeaderTextStyle,)),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: 50.w),
                    child: SizedBox(width: 143.w,child: Text('Expanse For',style: AppConst.appTableHeaderTextStyle,)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: SizedBox(width: 54.w,child: Text('Amount',style: AppConst.appTableHeaderTextStyle,)),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left:28.w ),
                    child: SizedBox(width:27.w,child: Text('Edit',style: AppConst.appTableHeaderTextStyle,)),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding:EdgeInsets.only(top: 10.h),
            //   child: Container(
            //     height:32.h,
            //     color: Color(0xFF2B2F33),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding:EdgeInsets.only(left: 10.w),
            //           child: SizedBox(width:61.w,child: Text('8-11-23',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding:EdgeInsets.only(left: 23.w),
            //           child: SizedBox(
            //               width: 143.w,
            //               child: Text('Breakfast',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10.w),
            //           child: SizedBox(
            //               width: 25.w,
            //               child: Text('50',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left:45.w),
            //           child: IconButton(onPressed:(){}, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:EdgeInsets.only(top: 10.h),
            //   child: Container(
            //     height:32.h,
            //     color: Color(0xFF2B2F33),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding:EdgeInsets.only(left: 10.w),
            //           child: SizedBox(width:61.w,child: Text('8-11-23',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding:EdgeInsets.only(left: 23.w),
            //           child: SizedBox(
            //               width: 143.w,
            //               child: Text('Breakfast',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10.w),
            //           child: SizedBox(
            //               width: 25.w,
            //               child: Text('50',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left:45.w),
            //           child: IconButton(onPressed:(){}, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:EdgeInsets.only(top: 10.h),
            //   child: Container(
            //     height:32.h,
            //     color: Color(0xFF2B2F33),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding:EdgeInsets.only(left: 10.w),
            //           child: SizedBox(width:61.w,child: Text('8-11-23',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding:EdgeInsets.only(left: 23.w),
            //           child: SizedBox(
            //               width: 143.w,
            //               child: Text('Breakfast',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10.w),
            //           child: SizedBox(
            //               width: 25.w,
            //               child: Text('50',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left:40.w),
            //           child: IconButton(onPressed:(){}, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:EdgeInsets.only(top: 10.h),
            //   child: Container(
            //     height:32.h,
            //     color: Color(0xFF2B2F33),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding:EdgeInsets.only(left: 10.w),
            //           child: SizedBox(width:61.w,child: Text('8-11-23',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding:EdgeInsets.only(left: 23.w),
            //           child: SizedBox(
            //               width: 143.w,
            //               child: Text('Breakfast',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10.w),
            //           child: SizedBox(
            //               width: 25.w,
            //               child: Text('50',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left:40.w),
            //           child: IconButton(onPressed:(){}, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding:EdgeInsets.only(top: 10.h),
            //   child: Container(
            //     height:32.h,
            //     color: Color(0xFF2B2F33),
            //     child: Row(
            //       children: [
            //         Padding(
            //           padding:EdgeInsets.only(left: 10.w),
            //           child: SizedBox(width:61.w,child: Text('8-11-23',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding:EdgeInsets.only(left: 23.w),
            //           child: SizedBox(
            //               width: 143.w,
            //               child: Text('Breakfast',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10.w),
            //           child: SizedBox(
            //               width: 25.w,
            //               child: Text('50',style: AppConst.appTableDataStyle,)),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left:40.w),
            //           child: IconButton(onPressed:(){}, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding:EdgeInsets.only(top: 10.h),
              child: Container(
                height:350.h,
                color: Color(0xFF2B2F33),
                child: ListView.builder(
                  itemCount: ep.totalExpenses.length,
                  itemBuilder: (context ,index){
                    final exp=ep.totalExpenses[index];
                    return Row(
                      children:
                      [
                        Padding(
                          padding:EdgeInsets.only(left: 5.w),
                          child: SizedBox(width:70.w,
                              child: Text(DateFormat('y-MM-dd').format(exp.date),style: AppConst.appTableDataStyle,)),
                        ),
                        Padding(
                          padding:EdgeInsets.only(left: 23.w),
                          child: SizedBox(
                              width: 143.w,
                              child: Text(exp.reason,style: AppConst.appTableDataStyle,)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: SizedBox(
                              width: 35.w,
                              child: Text("${exp.amount}",style: AppConst.appTableDataStyle,)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:30.w),
                          child: IconButton(
                              onPressed:(){
                            // if(!ep.isEditing(ep.totalExpenses[index])){
                            //   ep.startEditing(ep.totalExpenses[index]);
                            // }
                            // else{
                            //   ep.stopEditing();
                            // }
                                if(!ep.isEditing(exp)){
                                  ep.startEditing(exp);
                                }
                                else{
                                  ep.stopEditing();
                                }
                          }, icon: Icon(Icons.edit,color: Color(0xffffffff) ,)),
                        ),
                      ],
                    );
                    //   Row(
                    //   children: [
                    //
                    //   ],
                    // );
                  },

                )

              ),
            ),
          ],
        ),
    );
  }
}
