class PaymentScreenHelper{
  static PaymentScreenHelper? _paymentScreenHelper;
  PaymentScreenHelper._internal();
  static PaymentScreenHelper instance(){
    if(_paymentScreenHelper == null){
      return _paymentScreenHelper = PaymentScreenHelper._internal();
    }
    return _paymentScreenHelper!;
  }
}