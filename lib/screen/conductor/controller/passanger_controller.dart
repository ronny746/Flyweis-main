import 'dart:convert';

import 'package:get/get.dart';
import 'package:my_bus_user_panel/common/configs.dart';

import '../../../domain/api_service.dart';

class PassengerController extends GetxController {
  var passangerList = [];
  var isLoading = false;
  @override
  void onInit() {
    getPassenger();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future getPassenger() async {
    passangerList.clear();
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getPassanger).get(onSuccess: (result) {
      passangerList = result['passengerdata'];
     
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }
}
