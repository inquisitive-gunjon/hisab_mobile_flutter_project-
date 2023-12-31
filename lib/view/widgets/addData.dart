import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/data/model/Expanse.dart';
import 'package:provider/provider.dart';

import '../../provider/expanseProvider.dart';
import '../../utils/app_constant.dart';
import 'custom_text_from_field.dart';
class DataDialogue extends ChangeNotifier{

  void  showSuccessSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    ));
    notifyListeners();
  }


  void showAddMoneyBottomSheet(BuildContext context) {
    final TextEditingController categoryNameController = TextEditingController();
    final TextEditingController addBalanceController = TextEditingController();

    final ep= Provider.of<ExpenseProvider>(context,listen: false);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child:Container(
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
                      child: CustomTextFormField(nameOfController: categoryNameController, yourFieldText: 'Category Name', keyBoardType: TextInputType.name, hintText: 'Write Your Category'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: CustomTextFormField(nameOfController: addBalanceController, yourFieldText: 'Add Balance', keyBoardType: TextInputType.number, hintText: 'Add Balance'),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.h,left:15.w,right: 15.w ),
                      child:InkWell(
                        onTap: (){

                          String categoryName=categoryNameController.text;
                          double addBalance=double.parse(addBalanceController.text);

                          // if (categoryName.text.isNotEmpty &&  addBalance.text != null){
                          //   ep.addEarning(categoryName.text,);
                          // }
                          // showSuccessSnackbar(context, 'SuccessFully You Create Your Balance');
                          //
                          // categoryName.clear();
                          //  addBalance.clear();
                          if(categoryName.isNotEmpty && addBalance != null){
                            // ep.addEarning(categortyName:'categoryName.text', addAmount:'addBalance.text');
                            Earning earning=Earning(categoryName: categoryName, amount: addBalance);
                            ep.addEarning(earning);
                            showSuccessSnackbar(context, 'SuccessFulluy wallet created');
                            Navigator.pop(context);
                            categoryNameController.clear();
                            addBalanceController.clear();
                          }
                          else {
                            showSuccessSnackbar(context, 'Error');
                          }
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
              )

            // Column(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     TextField(
            //       controller: amountController,
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(labelText: 'Enter amount'),
            //     ),
            //     SizedBox(height: 16),
            //     ElevatedButton(
            //       onPressed: () {
            //         if (amountController.text.isNotEmpty) {
            //           double amount = double.parse(amountController.text);
            //           Provider.of<ExpenseModel>(context, listen: false).addMoney(amount);
            //           Navigator.pop(context); // Close the bottom sheet
            //           _showSuccessSnackbar(context, 'Money added successfully');
            //         }
            //       },
            //       child: Text('Add'),
            //     ),
            //   ],
            // ),
          ),
        );
      },
    );
  }
  void showAddExpenseBottomSheet(BuildContext context) {
    final TextEditingController categoryNameController=TextEditingController();
    final TextEditingController dateTimeController=TextEditingController();
    final TextEditingController expenseDescriptionController=TextEditingController();
    final TextEditingController addAmountController=TextEditingController();

    final ep= Provider.of<ExpenseProvider>(context,listen: false);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child:Container(
                width: 360.w,
                height: 500.h,
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
                      padding:EdgeInsets.only(top:15.h,),
                      child: Center(child: Text('Add Expanse',style: AppConst.appCreateWallet,)),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top: 15.h),
                      child: CustomTextFormField(nameOfController: categoryNameController, yourFieldText: 'Category Name', keyBoardType: TextInputType.name, hintText: 'Write Your Category'),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top: 15.h),
                      child: GestureDetector(
                        // onTap: () async {
                        //   DateTime? pickedDate = await showDatePicker(
                        //     context: context,
                        //     initialDate: DateTime.now(),
                        //     firstDate: DateTime(2000),
                        //     lastDate: DateTime(2101),
                        //   );
                        //   if (pickedDate != null) {
                        //     dateTimeController.text = pickedDate.toLocal().toString(); // Use toLocal as a property
                        //   }
                        // },
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickedDate != null) {
                            dateTimeController.text = pickedDate.toLocal().toString(); // Use toLocal as a property
                          }
                        },
                        child: AbsorbPointer(child: CustomTextFormField(nameOfController: dateTimeController, yourFieldText: 'Add Date', keyBoardType: TextInputType.name, hintText: 'Add Date')),
                      )

                    ),
                    Padding(
                      padding:EdgeInsets.only(top: 15.h),
                      child: CustomTextFormField(nameOfController: expenseDescriptionController, yourFieldText: 'Write Expense Sector', keyBoardType: TextInputType.name, hintText: 'Write Your Expense Name'),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: CustomTextFormField(nameOfController: addAmountController, yourFieldText: 'Amount', keyBoardType: TextInputType.number, hintText: 'Add Balance'),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.h,left:15.w,right: 15.w ),
                      child:InkWell(
                        onTap: () {
                          String categoryName = categoryNameController.text;
                          String dateTime = dateTimeController.text;
                          String expenseDescription = expenseDescriptionController.text;
                          double amountAdd = double.parse(addAmountController.text);
                          if (categoryName.isNotEmpty && expenseDescription.isNotEmpty && amountAdd != null) {
                            DateTime parsedDate = DateTime.parse(dateTime);
                            Expense expense = Expense(categoryName: categoryName, date: parsedDate, reason: expenseDescription, amount: amountAdd);
                            ep.addExpense(expense);
                            showSuccessSnackbar(context, 'Successfully Expense Added');
                            Navigator.pop(context);
                            categoryNameController.clear();
                            dateTimeController.clear();
                            expenseDescriptionController.clear();
                            addAmountController.clear();
                          }
                        },

                        // {
                        //   String categoryName=categoryNameController.text;
                        //   String dateTime=dateTimeController.text;
                        //   String expenseDescription=expenseDescriptionController.text;
                        //   double amountAdd=double.parse(addAmountController.text);
                        //   if(categoryName.isNotEmpty && expenseDescription.isNotEmpty && amountAdd !=null){
                        //      DateTime parsedDate=DateTime.parse(dateTime);
                        //     Expense expense=Expense(categoryName:categoryName, date: parsedDate, reason: expenseDescription, amount: amountAdd);
                        //     ep.addExpense(expense);
                        //     showSuccessSnackbar(context, 'SuccessFulluy Expense Added');
                        //     Navigator.pop(context);
                        //     categoryNameController.clear();
                        //     dateTimeController.clear();
                        //     expenseDescriptionController.clear();
                        //     addAmountController.clear();
                        //   }
                        //   // Navigator.pop(context);
                        // },
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
              )

          ),
        );
      },
    );
  }

}