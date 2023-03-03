import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_bus_user_panel/common/configs.dart';
import 'package:my_bus_user_panel/controllers/authcontroller.dart';

import '../../../domain/api_service.dart';
import '../screen/distance.dart';

class HomeController extends GetxController {
  var isLoading = false;
  var allbusss = [];
   AuthController userData = Get.put(AuthController());
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController timmingController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  @override
  void onInit() {
    fromController.text = "33";
    toController.text = "67";
    timmingController.text = "18:30PM";
    dateController.text = "2023-01-14";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future getAllBuses() async {
    if (fromController.text.isNotEmpty || toController.text.isNotEmpty) {
      isLoading = true;
      update();
      await ApiService(url: AppConfigs.getAllBuses, data: {
        "arrival": fromController.text,
        "destination": toController.text,
        "time": timmingController.text,
        "date": dateController.text
      }).post(onSuccess: (result) {
        allbusss = result['data'];

        isLoading = false;
        Get.to(() => const Distance());
        update();
      }, onError: (error) {
        isLoading = false;
        update();
        print(error);
      });
    }
  }
}
