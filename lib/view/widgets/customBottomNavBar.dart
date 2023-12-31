import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/view/screen/chart.dart';
import 'package:hisab/view/screen/homepage.dart';
import 'package:hisab/view/screen/profile.dart';
import 'package:provider/provider.dart';
import '../../provider/bottomNavigationBarProvider.dart';
import '../../utils/app_constant.dart';
import '../screen/note.dart';

// class CurvedNavigationBarPage extends StatefulWidget {
//   const CurvedNavigationBarPage({super.key});
//
//   @override
//   State<CurvedNavigationBarPage> createState() =>
//       _CurvedNavigationBarPageState();
// }

//
// class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {
//   int _index = 0;
//
//   final List<Widget> _pages = [
//     const Homepage(),
//     const Note(),
//     const Chart(),
//     const Profile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     final notesProvider = Provider.of<NotesProvider>(context);
//
//     return Scaffold(
//       backgroundColor: AppConst.appBackgroundColor,
//       body: _pages[_index],
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.only(bottom: 10.h),
//         child: Container(
//           height: 86.h,
//           child:BottomNavigationBar(
//           backgroundColor: Colors.transparent,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: AppConst.appBackgroundColor),
//             BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Note', backgroundColor:AppConst.appBackgroundColor),
//             BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline), label: 'Chart', backgroundColor: AppConst.appBackgroundColor),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile', backgroundColor: AppConst.appBackgroundColor),
//           ],
//           onTap: (index) {
//             setState(() {
//               _index = index;
//             });
//           },
//         ),
//         ),
//       ),
//     );
//   }
// }
///set state style ///
// class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {
//   int _index = 0;
//
//   final List<Widget> _pages = [
//     const Homepage(),
//     const Note(),
//     const Chart(),
//     const Profile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     final notesProvider = Provider.of<NotesProvider>(context);
//
//     return Scaffold(
//       backgroundColor: AppConst.appBackgroundColor,
//       body: _pages[_index],
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.only(bottom: 10.h),
//         child: Container(
//           height: 86.h,
//           child: BottomNavigationBar(
//             backgroundColor: Colors.transparent,
//             type: BottomNavigationBarType.fixed,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//                 backgroundColor: AppConst.appBackgroundColor,
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.note),
//                 label: 'Note',
//                 backgroundColor: AppConst.appBackgroundColor,
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.pie_chart_outline),
//                 label: 'Chart',
//                 backgroundColor: AppConst.appBackgroundColor,
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: 'Profile',
//                 backgroundColor: AppConst.appBackgroundColor,
//               ),
//             ],
//             currentIndex: _index, // Add this line to set the current index
//             onTap: (index) {
//               setState(() {
//                 _index = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
///provider\\\

///ok
// class CurvedNavigationBarPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppConst.appBackgroundColor,
//       body: Consumer<BottomNavigationBarProvider>(
//         builder: (context, provider, child) {
//           return IndexedStack(
//             index: provider.currentIndex,
//             children:  [
//               Homepage(),
//               Note(),
//               Chart(),
//               Profile(),
//             ],
//           );
//         },
//       ),
//       bottomNavigationBar:
//       Padding(
//         padding: EdgeInsets.only(bottom: 10.h,left: 15.w,right: 15.w),
//         child: Consumer<BottomNavigationBarProvider>(
//           builder: (context, provider, child) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(40),
//               child: Container(
//                 height: 86.h,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: AppConst.appBackgroundColor
//                 ),
//                 child: BottomNavigationBar(
//                   backgroundColor: Colors.transparent,
//                   type: BottomNavigationBarType.fixed,
//                   currentIndex: provider.currentIndex,
//                   // selectedItemColor: Colors.blue, // Set the color for the selected item
//                   unselectedItemColor: Colors.grey, // Set
//                   selectedLabelStyle: AppConst.hisabTextStyle,
//                   items: [
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.home),
//                       label: 'Home',
//                       backgroundColor: AppConst.appBackgroundColor,
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.note),
//                       label: 'Note',
//                       backgroundColor: AppConst.appBackgroundColor,
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.show_chart),
//                       label: 'Chart',
//                       backgroundColor: AppConst.appBackgroundColor,
//                     ),
//                     BottomNavigationBarItem(
//                       icon: Icon(Icons.person),
//                       label: 'Profile',
//                       backgroundColor: AppConst.appBackgroundColor,
//                     ),
//                   ],
//                   onTap: (index) {
//                     Provider.of<BottomNavigationBarProvider>(context, listen: false).updateIndex(index);
//                   },
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
///
class CurvedNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
      body: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, child) {
          return IndexedStack(
            index: provider.currentIndex,
            children: const [
              Homepage(),
              Note(),
              Chart(),
              Profile(),
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.h, left: 15.w, right: 15.w),
        child: Consumer<BottomNavigationBarProvider>(
          builder: (context, provider, child) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  height: 86.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppConst.appBackgroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(Icons.home, 'Home', provider, 0),
                      _buildNavItem(Icons.note, 'Note', provider, 1),
                      _buildNavItem(Icons.show_chart, 'Chart', provider, 2),
                      _buildNavItem(Icons.person, 'Profile', provider, 3),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, BottomNavigationBarProvider provider, int index) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        provider.updateIndex(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: provider.currentIndex == index ? Colors.blue : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: provider.currentIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}