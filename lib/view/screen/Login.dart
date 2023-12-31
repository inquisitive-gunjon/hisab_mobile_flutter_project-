import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/auth_provider.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/screen/homepage.dart';
import 'package:hisab/view/screen/profile.dart';
import 'package:hisab/view/widgets/app_header.dart';
import 'package:hisab/view/widgets/divider.dart';
import 'package:provider/provider.dart';

import '../widgets/customBottomNavBar.dart';
import '../widgets/custom_text_from_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey1 = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ap=Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor:AppConst.appBackgroundColor ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:100.h,left:64.4.w ),
              child: Container(
                height: 111.h,
                width: 270.w,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    App_Header(),
                    Padding(
                      padding: EdgeInsets.only(left:0.w),
                      child: Image.asset("assets/icon/divider.png",width: 202.w,height: 3.7.h,),
                    ),


                  ],
                ),
              ),
            ),
            Form(
              key: _formKey1,
              child: Padding(
                padding: EdgeInsets.only(top:65.h ),
                child:
                //Custom_TFormField(emailController: _emailController),
                Column(
                  children: [
                    CustomTextFormField(
                      nameOfController: _emailController,
                      yourFieldText:'Email',
                      keyBoardType: TextInputType.emailAddress,
                      hintText:'Enter Your Email',
                      // onchanged: (value)=>ap.setEmail(value),
                      // errorsText: ap.isEmailValid()?null :'Invalid Email',
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 30.h),
                      child: CustomTextFormField(
                          nameOfController: _passWordController,
                          yourFieldText: 'Password',
                          keyBoardType:TextInputType.visiblePassword,
                          hintText:'Enter your Password',
                        // onchanged: (value)=>ap.setPassword(value),
                        // errorsText: ap.isPasswordValid()? null:'invalid password',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: InkWell(
                        onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => CurvedNavigationBarPage()),
                            );
                          },
                        child: Container(
                          width: 330.w,height: 42.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin:  Alignment(0.71, -0.71),
                                end:  Alignment(-0.71, 0.71),
                                colors:  [Color(0xFF1B99D7), Color(0xFF2943A3)]
                            ),),
                          child: Center(child: Text('Submit',style:AppConst.appTFFStyle)),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
           Padding(
             padding: EdgeInsets.only(top: 30.h,right: 28.w,left: 29.w),
             child: const AppDivider(dividerText: 'Or'),
           ),
            Padding(padding: EdgeInsets.only(top:30.h ),

            child: InkWell(
              child: Container(
                width: 330.w,height: 42.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF2B2F33),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icon/google.png',height: 24.h,width: 24.w,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text("Login with Google",style: AppConst.appTFFHintStyle,),
                    )
                  ],
                ),
              ),
                onTap: () async{
                await ap.signInWithGoogle();
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CurvedNavigationBarPage()),
                );
                print("Successfully signed in");
                print("User details:");
                print("Name: ${ap.user!.displayName}");
                print("Email: ${ap.user!.email}");
                print("Email Verified: ${ap.user!.emailVerified}");
                print("Anonymous: ${ap.user!.isAnonymous}");
                print("Phone Number: ${ap.user!.phoneNumber}");
                print("ID Token: ${ap.user!.getIdToken()}");
                print("Metadata: ${ap.user!.metadata.toString()}");
                print("Refresh Token: ${ap.user!.refreshToken}");
                print("Tenant ID: ${ap.user!.tenantId}");
                print("UID: ${ap.user!.uid}");
                },
            ),
            )
          ],
        ),
      ),
    );
  }
}




