
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/auth_provider.dart';
import 'package:hisab/provider/bottomNavigationBarProvider.dart';
import 'package:hisab/provider/expanseProvider.dart';
import 'package:hisab/provider/noteProvider.dart';
import 'package:hisab/view/screen/Login.dart';
import 'package:hisab/view/widgets/addData.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider<AuthProvider>(create: (context)=>AuthProvider()),
            ChangeNotifierProvider<NotesProvider>(create:(context)=>NotesProvider()),
            ChangeNotifierProvider<ExpenseProvider>(create: (context)=>ExpenseProvider()),
            ChangeNotifierProvider<BottomNavigationBarProvider>(create: (context) => BottomNavigationBarProvider()),
            ChangeNotifierProvider<DataDialogue>(create: (context)=>DataDialogue())
          ],
          child: const Myapp(),
        )
      );

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context ,child){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        );
      },
    );
  }
}
