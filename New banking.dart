import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
class Paymentmode extends StatefulWidget {
  const Paymentmode({Key? key}) : super(key: key);

  @override
  State<Paymentmode> createState() => _PaymentmodeState();
}

class _PaymentmodeState extends State<Paymentmode> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Payment();
              },child: const Text("Submit"),
            ),
          ),

        ],

      ),

    );
  }
  void Payment(){
    Razorpay _razerpay=Razorpay();
    _razerpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,_handlerPaymentSuccess);
    _razerpay.on(Razorpay.EVENT_PAYMENT_ERROR,_handlerPaymentError);

    var options = {
      'key': 'rzp_test_6jEhR5Op9RnC79',
      'amount': 100,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      // 'prefill': {
      // 'contact': '8888888888',
      // 'email': 'test@razorpay.com'
      // };
    };
    _razerpay.open(options);
  }

  }
  _handlerPaymentSuccess(PaymentSuccessResponse response){
    print('Payment success');

  }
  _handlerPaymentError(PaymentSuccessResponse response){
    print('Payment faoled');

  }

