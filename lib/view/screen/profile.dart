import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/widgets/custom_text_from_field.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../provider/auth_provider.dart';
import '../widgets/profileDetails.dart';
import 'Login.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _passwordController=TextEditingController();
  bool isEditModeOn=false;
  void editPassword(){
    setState(() {
      isEditModeOn=!isEditModeOn;
    });
  }
  @override
  Widget build(BuildContext context) {
    final ap=Provider.of<AuthProvider>(context);
    // return Scaffold(
    //   backgroundColor: AppConst.appBackgroundColor,
    //   appBar: AppBar(
    //     backgroundColor: Colors.transparent,
    //     title: Padding(
    //       padding: EdgeInsets.only(left: 10.w),
    //       child: const Text('Profile'),
    //     ),
    //   ),
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.only(top: 25.h,left: 115.w,right: 115.w),
    //         child: Container(
    //           height: 150.h,width: 150.w,
    //           child: CircleAvatar(
    //             backgroundImage: AssetImage(Assets.iconUser),
    //           ),
    //         ),
    //       ),
    //       Padding(padding: EdgeInsets.only(top: 10.h),
    //         child:const ProfileDetails(yourFieldText: 'Name',text: 'User Name')),
    //       Padding(
    //         padding:EdgeInsets.only(top: 10.h),
    //         child:const ProfileDetails(yourFieldText: 'Email',text: 'example@gmail.com'),
    //       ),
    //       Align(alignment: Alignment.topRight,
    //         child: Padding(
    //         padding:EdgeInsets.only(right: 15.w,top: 20.h),
    //         child: InkWell(
    //           onTap: (){
    //             showDialog(
    //                 context: context,
    //                 builder: (context) {
    //                   return Material(
    //                     type: MaterialType.transparency,
    //                     child: Stack(
    //                       children: [
    //                         Positioned(
    //                             top:490.h,
    //                             left: 0.w,
    //                             right: 0.w,
    //                             child: Container(
    //                           height: 153.h,
    //                           width: 360.w,
    //                           color: Colors.transparent,
    //                           child: Column(
    //                             children: [
    //                               CustomTextFormField(nameOfController: _passwordController,
    //                                   yourFieldText: 'Change Password',
    //                                   keyBoardType: TextInputType.visiblePassword,
    //                                   hintText: 'Password'),
    //                               Padding(padding: EdgeInsets.only(top: 19.h),child:
    //                               Container(
    //                                 height: 42.h,
    //                                 width: 330.w,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(5),
    //                                   gradient:const LinearGradient(
    //                                     begin: Alignment(1.00, 0.00),
    //                                     end: Alignment(-1, 0),
    //                                     colors: [Color(0xFF1B9CD9), Color(0xFF2A41A2)],
    //                                   ),
    //                                 ),
    //                                 child: Center(child: Text('Update',style: AppConst.appButtonTextStyle,)),
    //
    //                               ),)
    //                             ],
    //                           ),
    //                         )),
    //
    //                       ],
    //                     ),
    //                   );
    //                   //   Container(
    //                   //   child:
    //                   //   AlertDialog(
    //                   //       title: Text(
    //                   //           "Changing Password"),
    //                   //       content: TextFormField(
    //                   //         keyboardType: TextInputType.number,
    //                   //         // autovalidateMode: AutovalidateMode.onUserInteraction,
    //                   //         controller: _passwordController,
    //                   //         decoration: InputDecoration(
    //                   //           filled: true,
    //                   //           border: OutlineInputBorder(
    //                   //             borderSide: BorderSide.none,
    //                   //             borderRadius: BorderRadius.circular(10),
    //                   //           ),
    //                   //           hintText: "Change Password",
    //                   //         ),
    //                   //       ),
    //                   //       actions: [
    //                   //         TextButton(
    //                   //             onPressed:
    //                   //                 () {
    //                   //               Navigator.pop(
    //                   //                   context);
    //                   //             },
    //                   //             child: Text(
    //                   //                 "ok"))
    //                   //       ]),
    //                   // );
    //                 });
    //           },
    //           child: Container(
    //             height: 42.h,
    //             width: 152.w,
    //
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(6),
    //               color:Color(0xFF2B2F33),
    //               border: Border.all(
    //                 color: Colors.blue,
    //                 width: 1,
    //               )
    //             ),
    //             child: Center(
    //               child: Text('Change Password',style: AppConst.appButtonTextStyle,),
    //             ),
    //           ),
    //         ),
    //       ),)
    //     ],
    //   ),
    // );
    // log('*********${ap.user!.phoneNumber}************ ');
    // log('*********${ap.user!.uid}************ ');
    // log('*********${ap.user!.isAnonymous}************ ');
    // log('*********${ap.user!.displayName}************ ');
    // log('*********${ap.user!.refreshToken}************ ');
    // log('*********${ap.user!.phoneNumber}************ ');
    // log('*********${ap.user!.phoneNumber}************ ');
    // log('*********${ap.user!.phoneNumber}************ ');

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppConst.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child:  Text('Profile',style: AppConst.appTextStyle,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child:  ElevatedButton(
                onPressed: () async {
                  await ap.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child: const Text('Sign Out'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 115.w, right: 115.w),
              child: Container(
                height: 150.h,
                width: 150.w,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      ap.user?.photoURL !=null ?
                      "${ap.user?.photoURL}" :
                      Assets.iconUser),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child:  ProfileDetails(yourFieldText: 'Name', text: '${ap.user?.displayName}'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child:  ProfileDetails(yourFieldText: 'Email', text: '${ap.user?.email}'),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 15.w, top: 20.h),
                child: InkWell(
                  onTap: editPassword,
                  child: Container(
                    height: 42.h,
                    width: 152.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFF2B2F33),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text('Change Password', style: AppConst.appButtonTextStyle),
                    ),
                  ),
                ),
              ),
            ),
            isEditModeOn?
            Container(
              height: 153.h,
              width: 360.w,
              color: Colors.transparent,
              child: Column(
                children: [
                  CustomTextFormField(
                    nameOfController: _passwordController,
                    yourFieldText: 'Change Password',
                    keyBoardType: TextInputType.visiblePassword,
                    hintText: 'Password',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 19.h),
                    child: Container(
                      height: 42.h,
                      width: 330.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF1B9CD9), Color(0xFF2A41A2)],
                        ),
                      ),
                      child: Center(
                        child: Text('Update', style: AppConst.appButtonTextStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ):const SizedBox()
          ],
        ),
      ),
    );
  }
}