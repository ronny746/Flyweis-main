import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_bus_user_panel/common/configs.dart';
import 'package:my_bus_user_panel/controllers/authcontroller.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../domain/api_service.dart';
import '../screen/distance.dart';
import '../screen/verify.dart';

class BookingController extends GetxController {
  var isLoading = false;

  AuthController userData = Get.put(AuthController());

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passengerController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  var busDetails;
  late Razorpay _razorpay;
  var booking;
  @override
  void onInit() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.onInit();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: "${response.orderId}"');
    print('Success Response: "${response.paymentId}"');
    print('Success Response: "${response.signature}"');
    bookingSeat();
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    bookingSeat();
  }

  void _handleExternalWallet(ExternalWalletResponse response) {}

  Future<String> oaderWithRazorpay() async {
    //Razorpay? _razorpay;
    var result = "";
    var options = {
      'key': 'rzp_test_OxI0gOIboniWYv',
      'amount': "1000",
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '', 'email': ''},
      'external': {
        'wallets': ['paytm'],
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }

    return result;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future bookingSeat() async {
    if (emailController.text.isNotEmpty || ageController.text.isNotEmpty) {
      isLoading = true;
      update();
      await ApiService(url: AppConfigs.booking, data: {
        "Seat": "4",
        "BusId": busDetails['_id'],
        "passengerId": userData.userDetails['_id'],
        "DropingPoint": busDetails['DropingPoint'],
        "BoardingPoint": busDetails['BoardingPoint'],
        "Email": emailController.text,
        "MobileNO": phoneController.text,
        "Name": passengerController.text,
        "Age": ageController.text
      }).post(onSuccess: (result) {
        print(result);
        Get.to(() => const Verfiy(isVerified: false));

        isLoading = false;

        update();
      }, onError: (error) {
        isLoading = false;
        update();
        print(error);
      });
    }
  }
}
