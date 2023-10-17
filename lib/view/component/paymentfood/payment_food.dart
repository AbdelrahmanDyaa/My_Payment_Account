import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypayment_account/view/component/background/background_widget.dart';
import 'package:mypayment_account/view/component/widget/text_custom.dart';
import 'package:mypayment_account/view_model/utils/colors.dart';

import '../../../view_model/bloc/payment_cubit.dart';

class PaymentFoodWidget extends StatelessWidget {
  const PaymentFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentDetailsCubit(),
      child: BlocBuilder<PaymentDetailsCubit, PaymentDetailsVisibility>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<PaymentDetailsCubit>().togglePaymentDetails();
                },
                child: BackGroundWidget(
                  padding: const EdgeInsets.all(12),
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.SecondBackground,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/food.jpg',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextCustom(
                                text: 'Food',
                                color: AppColors.grey,
                                fontSize: 16,
                              ),
                              const SizedBox(width: 173),
                              Icon(
                                state == PaymentDetailsVisibility.visible
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down_outlined,
                                color: AppColors.Black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              TextCustom(
                                text: '\$21',
                                fontWeight: FontWeight.bold,
                                color: AppColors.Black,
                                fontSize: 20,
                              ),
                              TextCustom(
                                text: '/ \$400',
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 20,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          TextCustom(
                            text: '-\$379',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (state == PaymentDetailsVisibility.visible)
                BackGroundWidget(
                  color: AppColors.SecondBackground,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: AppColors.Black,
                    width: 1,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextCustom(
                        text: 'Recent Transaction',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.Black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: TextCustom(
                          text: 'tesco',
                          color: AppColors.Black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        leading: const Icon(Icons.fastfood_rounded),
                        trailing: TextCustom(
                          text: '-\$8.99',
                          color: AppColors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        title: TextCustom(
                          text: 'pet_shop',
                          color: AppColors.Black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        leading: const Icon(Icons.pets),
                        trailing: TextCustom(
                          text: '-\$4.99',
                          color: AppColors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        title: TextCustom(
                          text: 'Bakery',
                          color: AppColors.Black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        leading: const Icon(Icons.breakfast_dining),
                        trailing: TextCustom(
                          text: '-\$3.99',
                          color: AppColors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        title: TextCustom(
                          text: 'tesco',
                          color: AppColors.Black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        leading: const Icon(Icons.breakfast_dining),
                        trailing: TextCustom(
                          text: '-\$2.99',
                          color: AppColors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Add more ListTiles as needed
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
