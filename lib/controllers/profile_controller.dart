import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:my_bus_user_panel/common/configs.dart';
import 'package:my_bus_user_panel/controllers/authcontroller.dart';
import 'package:my_bus_user_panel/domain/api_service.dart';
import 'package:my_bus_user_panel/domain/models/help_support_model.dart';

class ProfileController extends GetxController {
  var privacyList = [];
  var notificationList = [];
  HelpSupportModel? helpList;
  var isLoading = false;
   AuthController userData = Get.put(AuthController());

  // @override
  // void onInit() {
  //   getPrivacyDetails();
  //   getHelpAndSupportDetails();
  //   super.onInit();
  // }

  Future<void> getPrivacyDetails() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getPrivacyPolicy).get(
      onSuccess: (result) {
        var datas = (result['data'] as List).map((e) {
          return e['message'];
        }).toList();
        privacyList = datas;
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        print(error);
        update();
      },
    );
  }

  Future<void> getHelpAndSupportDetails() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getHelpAndSupport).get(
        onSuccess: (result) {
      helpList = HelpSupportModel.fromJson(result);
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<String> addRating(
      {required String message, required int rating}) async {
    isLoading = true;
    update();
    String res = 'unexpected error';
    await ApiService(
        url: AppConfigs.createRating,
        data: {"message": message, "rating": rating}).post(onSuccess: (result) {
      isLoading = false;
      update();
      res = 'success';
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
      res = 'error';
    });
    return res;
  }

  Future<void> getNotifications() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getNotifications).get(onSuccess: (result) {
      notificationList = (result["data"] as List).map((e) {
        return e["message"];
      }).toList();
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }
}
