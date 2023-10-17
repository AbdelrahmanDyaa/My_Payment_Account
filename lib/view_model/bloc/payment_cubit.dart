import 'package:flutter_bloc/flutter_bloc.dart';

enum PaymentDetailsVisibility { hidden, visible }

class PaymentDetailsCubit extends Cubit<PaymentDetailsVisibility> {
  PaymentDetailsCubit() : super(PaymentDetailsVisibility.hidden);
  static PaymentDetailsCubit get(context) => BlocProvider.of<PaymentDetailsCubit>(context);

  void togglePaymentDetails() {
    if (state == PaymentDetailsVisibility.hidden) {
      emit(PaymentDetailsVisibility.visible);
    } else {
      emit(PaymentDetailsVisibility.hidden);
    }
  }
}
