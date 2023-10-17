import 'package:flutter/material.dart';
 import 'package:mypayment_account/view/component/moneySpent/spent_money.dart';
import 'package:mypayment_account/view/component/paymentbill/payment_bill.dart';
import 'package:mypayment_account/view/component/paymentfood/payment_food.dart';
import 'package:mypayment_account/view/component/paymentgames/payment_games.dart';
import 'package:mypayment_account/view/component/paymentgoingout/payment_goingout.dart';
import 'package:mypayment_account/view/component/widget/text_custom.dart';
import 'package:mypayment_account/view_model/utils/colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.White,
        title: TextCustom(
          text: 'Hi Jim',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          color: AppColors.Black,
           ),
        centerTitle: false,
        actions: const [
          SizedBox(width: 10,),
          Icon(
            Icons.settings,
            color: AppColors.Black,
          ),
          SizedBox(width: 15,),
          Icon(
            Icons.more_vert,
            color: AppColors.Black,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          TextCustom(
                color: AppColors.Black,
                fontSize: 20,
                text: 'You Have Already Spent',
              ),
          const SizedBox(height: 10),
          const SpentMoneyWidget(),
          const SizedBox(height: 10),
          TextCustom(
            color: AppColors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            text: 'and there is 18 days left until payday',
          ),
          const SizedBox(height: 25),
            const PaymentFoodWidget(),
          const SizedBox(height: 15),
            const PaymentBillWidget(),
          const SizedBox(height: 15),
            const PaymentGoingOut(),
          const SizedBox(height: 15),
            const PaymentGamingWidget(),
        ],
      ),
    );
  }
}