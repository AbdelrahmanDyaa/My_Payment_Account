import 'package:flutter/material.dart';
import 'package:mypayment_account/view/component/widget/text_custom.dart';
import 'package:mypayment_account/view_model/utils/colors.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: TextCustom(
              text: 'Tesco',
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          leading: Icon(
              Icons.breakfast_dining_outlined,
            color: AppColors.red,
          ),
          trailing: TextCustom(
            text: '-\$8.99',
            color: AppColors.grey,
            fontSize: 20,

          ),
        ),
        ListTile(
          title: TextCustom(
            text: 'Tesco',
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          leading: Icon(
            Icons.breakfast_dining_outlined,
            color: AppColors.red,
          ),
          trailing: TextCustom(
            text: '-\$8.99',
            color: AppColors.grey,
            fontSize: 20,

          ),
        ),
        ListTile(
          title: TextCustom(
            text: 'Tesco',
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          leading: Icon(
            Icons.breakfast_dining_outlined,
            color: AppColors.red,
          ),
          trailing: TextCustom(
            text: '-\$8.99',
            color: AppColors.grey,
            fontSize: 20,

          ),
        ),
        ListTile(
          title: TextCustom(
            text: 'Tesco',
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          leading: Icon(
            Icons.breakfast_dining_outlined,
            color: AppColors.red,
          ),
          trailing: TextCustom(
            text: '-\$8.99',
            color: AppColors.grey,
            fontSize: 20,

          ),
        ),
        ListTile(
          title: TextCustom(
            text: 'Tesco',
            color: AppColors.Black,
            fontWeight: FontWeight.bold,
            fontSize: 20,

          ),
          leading: Icon(
            Icons.breakfast_dining_outlined,
            color: AppColors.red,
          ),
          trailing: TextCustom(
            text: '-\$8.99',
            color: AppColors.grey,
            fontSize: 20,

          ),
        ),

      ],
    );
  }
}
