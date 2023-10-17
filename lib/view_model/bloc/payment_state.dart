abstract class PaymentDetailsState {}

class PaymentDetailsHidden extends PaymentDetailsState {}
class PaymentDetailsVisible extends PaymentDetailsState {}


abstract class PaymentDetailsEvent {}

class TogglePaymentDetailsEvent extends PaymentDetailsEvent {}



