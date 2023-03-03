import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_bus_user_panel/common/configs.dart';
import 'package:my_bus_user_panel/domain/api_service.dart';
import 'package:my_bus_user_panel/domain/models/admin_noti_model.dart';

class AdminController extends GetxController {
  var walletBalance = 0;
  AdminNotificationModel? notificationsList;
  bool isLoading = false;

  Future<void> getWalletBalance() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getAdminWallet).get(onSuccess: (result) {
      walletBalance = result["data"]["balance"];
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<void> getNotifications() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.getAdminNotifications).get(
        onSuccess: (result) {
      notificationsList = AdminNotificationModel.fromJson(result);
      isLoading = false;
      update();
      print(notificationsList);
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<void> sendNotification({required String notiTxt}) async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.sendNotification, data: {
      "message": notiTxt,
    }).post(onSuccess: (result) {
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<void> updateNotification(
      {required String notificationId, required String newNoti}) async {
    isLoading = true;
    update();
    await ApiService(
      url: '${AppConfigs.updateNotification}/$notificationId',
      data: {"message": newNoti},
    ).put(onSuccess: (result) {
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<void> addHelpAndSupport(
      {required String name, required String email}) async {
    isLoading = true;
    update();
    await ApiService(
      url: AppConfigs.addHelp,
      data: {"email": email, "name": name},
    ).post(onSuccess: (result) {
      isLoading = false;
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<String> deleteHelpAndSupport({required String helpId}) async {
    isLoading = true;
    update();
    String res = 'unexpected error';
    await ApiService(url: '${AppConfigs.deleteHelp}/$helpId').delete(
      onSuccess: (result) {
        isLoading = false;
        update();
        res = 'Help deleted successfully';
      },
      onError: (error) {
        isLoading = false;
        update();
        print(error);
        res = error.toString();
      },
    );
    return res;
  }
}
