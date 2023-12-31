import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/auth_provider.dart';
import 'package:hisab/view/screen/Login.dart';
import 'package:provider/provider.dart';

class DemoDataView extends StatelessWidget {
  const DemoDataView({super.key});

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context);
    final user=ap.user;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:EdgeInsets.only(left: 40.w,top: 100.h),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:AssetImage('assets/icon/user.png'),
              // NetworkImage('${user?.photoURL}')
              // NetworkImage(
              //     ap.user !=null ?"${ap.user!.photoURL}" :
              //     'assets/icon/user.png'),
            ),

                      const SizedBox(height: 20.0),
                      Text('Name: ${user?.displayName}'),
                      const SizedBox(height: 5.0),
                      Text('Email: ${user?.email}'),
                      const SizedBox(height: 5.0),
                      Text('Email Verified: ${user?.emailVerified}'),
                      const SizedBox(height: 5.0),
                      Text('Anonymous: ${user?.isAnonymous}'),
                      const SizedBox(height: 5.0),
                      Text('Phone Number: ${user?.phoneNumber}'),
                      const SizedBox(height: 5.0),
                      Text('ID Token: ${user?.getIdToken()}'),
                      const SizedBox(height: 5.0),
                      Text('Metadata: ${user?.metadata.toString()}'),
                      const SizedBox(height: 5.0),
                      Text('Refresh Token: ${user?.refreshToken}'),
                      const SizedBox(height: 5.0),
                      Text('Tenant ID: ${user?.tenantId}'),
                      const SizedBox(height: 5.0),
                      Text('UID: ${user?.uid}'),
                      const SizedBox(height: 20.0),
                      ElevatedButton(
          onPressed: () async {
            await ap.signOut();
            // Replace with your desired navigation logic
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },
          child: const Text('Sign Out'),
                      ),
                    ]),
        ));
  }
}
