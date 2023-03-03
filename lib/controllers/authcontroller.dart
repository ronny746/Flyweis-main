import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_bus_user_panel/common/configs.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import '../../../domain/api_service.dart';
import '../screen/selecttheservice.dart';

class AuthController extends GetxController {
  var isLoading = false;
  var userDetails;
  TextEditingController phoneController = TextEditingController();
  TextEditingController pasController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  var userName = "Rohit";
  Map<String, dynamic>? _userData;
  String Welcome = "Facebook";

  @override
  void onInit() {
    phoneController.text = "7380535910";
    pasController.text = "Rohit@12345";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future loginwithPass() async {
    isLoading = true;
    update();
    await ApiService(url: AppConfigs.loginwithPass, data: {
      "MobileNo": phoneController.text,
      "password": pasController.text
    }).post(onSuccess: (result) {
      // passangerList = result['passengerdata'];
      userDetails = result['user'];

      print(userDetails['name']);

      isLoading = false;
      Get.to(() => SelecttheService());
      update();
    }, onError: (error) {
      isLoading = false;
      update();
      print(error);
    });
  }

  Future<void> signInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    UserCredential authResult = await _auth.signInWithCredential(credential);
    userName = authResult.user!.displayName!;
    print("User Name: ${authResult.user!.displayName}");
    print("User Email ${authResult.user!.email}");
    Get.to(() => SelecttheService());
  }

  Future<UserCredential> facebookLoging() async {
    print("object");
    final loginResut =
        await FacebookAuth.instance.login(permissions: ['email']);
    if (loginResut.status == LoginStatus.success) {
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
    } else {
      print(loginResut.message);
    }

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResut.accessToken!.token);

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
