import 'package:flutter/material.dart';
import '../../../view_model/utils/colors.dart';

import '../widget/text_custom.dart';
class SpentMoneyWidget extends StatelessWidget {
  const SpentMoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: AppColors.Black,
        ),
      ),

      child: Row(

        children: [
          Ink.image(
            image: const AssetImage('assets/money.png'),
            width: 40,
            height: 30,
          ),
          TextCustom(
            color: AppColors.Black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            text: '12345.65\$',
          )
        ],
      ),
    );
  }
}
