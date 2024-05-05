import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 3.2;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CreditCard(
            cardNumber: "5450 7879 4864 7854",
            cardExpiry: "10/25",
            cardHolderName: "Card Holder",
            cvv: "456",
            bankName: "HBL Bank",
            cardType: CardType.masterCard,
            showBackSide: false,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: true,
            textExpDate: 'Exp. Date',
            textName: 'Shahab Mustafa',
            textExpiry: 'MM/YY',
            height: 230,
            horizontalMargin: 10,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardBox(
                title: "My Wallet",
                subTitle: "12000",
                color: Colors.green,
                imageUrl: "assets/images/wallet.png",
              ),
              SizedBox(
                height: 5,
              ),
              CardBox(
                title: "Total Receiver Money",
                subTitle: "12000",
                color: Colors.blue,
                imageUrl: "assets/images/receive.png",
              ),
              SizedBox(
                height: 5,
              ),
              CardBox(
                title: "Total Send Money",
                subTitle: "12000",
                color: Colors.red,
                imageUrl: "assets/images/dollar.png",
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PieChart(
                dataMap: {
                  "My Wallet" : 40,
                  "Total Send" : 30,
                  "Total Receiver" : 20,
                },
                animationDuration: Duration(milliseconds: 1400),
                chartLegendSpacing: 32,
                chartRadius: 150.0,
                colorList: [
                  Colors.green,
                  Colors.red,
                  Colors.blue,
                ],
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                // centerText: "HYBRID",
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  const CardBox({
    required this.title,
    required this.subTitle,
    required this.color,
    required this.imageUrl,
    super.key,
  });

  final String title;
  final String subTitle;
  final Color color;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               children: [
                 Image.asset(
                   imageUrl,
                   height: 40,
                   width: 40,
                   color: Colors.white,
                 ),
                 const SizedBox(
                   width: 10,
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       title,
                       style: const TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w900,
                         color: Colors.white,
                       ),
                     ),
                     const SizedBox(
                       height: 5,
                     ),
                     Text(
                       subTitle,
                       style: const TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w700,
                         color: Colors.white,
                       ),
                     ),
                   ],
                 ),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}
