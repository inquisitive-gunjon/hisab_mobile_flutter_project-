// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/expanseProvider.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:provider/provider.dart';
class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final exp=Provider.of<ExpenseProvider>(context);
    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child:  Text('Chart',style: AppConst.appTextStyle,),
          ),
        ),
          body:Center(child: CircularProgressIndicator(),)
          // FutureBuilder(
          //     future: Future.value(exp),
          //     builder: (context ,snapshot){
          //       if(snapshot.connectionState ==ConnectionState.done){
          //         return IncomeExpenseChart(expenseProvider: exp);
          //       }
          //       else {
          //         return Center(child: CircularProgressIndicator());
          //       }
          //     }),
    );
  }
}




// class IncomeExpenseChart extends StatelessWidget {
//   final ExpenseProvider expenseProvider;
//
//   IncomeExpenseChart({required this.expenseProvider});
//
//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(show: false),
//         borderData: FlBorderData(
//           show: true,
//           border: Border.all(color: const Color(0xff37434d), width: 1),
//         ),
//         minX: 0,
//         maxX: expenseProvider.totalEarnings.length.toDouble() - 1,
//         minY: 0,
//         maxY: _calculateMaxY(),
//         lineBarsData: [
//           _createLineChartBar(
//             colors: [Colors.blue],
//             isIncome: true,
//             spots: _generateSpots(expenseProvider.totalEarnings),
//           ),
//           _createLineChartBar(
//             colors: [Colors.red],
//             isIncome: false,
//             spots: _generateSpots(expenseProvider.totalExpenses),
//           ),
//         ],
//       ),
//     );
//   }
//
//   double _calculateMaxY() {
//     final double maxIncome = expenseProvider.totalEarnings.fold(
//       0.0,
//           (value, earning) => value > earning.amount ? value : earning.amount,
//     );
//     final double maxExpense = expenseProvider.totalExpenses.fold(
//       0.0,
//           (value, expense) => value > expense.amount ? value : expense.amount,
//     );
//     return maxIncome > maxExpense ? maxIncome : maxExpense;
//   }
//
//   LineChartBarData _createLineChartBar({
//     required List<Color> colors,
//     required bool isIncome,
//     required List<FlSpot> spots,
//   }) {
//     return LineChartBarData(
//       spots: spots,
//       isCurved: true,
//       color: Colors.blue,
//       barWidth: 4,
//       isStrokeCapRound: true,
//       belowBarData: BarAreaData(show: false),
//       dotData: FlDotData(show: true, getDotPainter: (spot, percent, barData, index) {
//         final isIncomeDot = isIncome && index == spots.indexOf(spots.reduce((a, b) => a.y > b.y ? a : b));
//         final isExpenseDot = !isIncome && index == spots.indexOf(spots.reduce((a, b) => a.y > b.y ? a : b));
//
//         if (isIncomeDot || isExpenseDot) {
//           return FlDotCirclePainter(
//             color: isIncomeDot ? Colors.blue : Colors.red,
//             strokeWidth: 0,
//             radius: 6,
//           );
//         } else {
//           return FlDotCirclePainter(
//             color: Colors.black,
//             strokeWidth: 0,
//             radius: 2,
//           );
//         }
//       }),
//       // belowBarColor: Colors.transparent,
//       aboveBarData: BarAreaData(show: false),
//     );
//   }
//
//   List<FlSpot> _generateSpots(List<dynamic> data) {
//     return List.generate(data.length, (index) => FlSpot(index.toDouble(), data[index].amount));
//   }
// }


////