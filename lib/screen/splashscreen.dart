import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bus_user_panel/screen/loginwithpassword.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  var data;
  @override
  void initState() {
    super.initState();

    navigatetohome();
  }

  navigatetohome() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // data = prefs.getInt("onboard");
    print(data);
    await Future.delayed(const Duration(seconds: 3), () {});
    // Get.off(() => data == null ? Onboarding_View() : Login_View());
    Get.to(() => LoginwithPassword());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash.png"), fit: BoxFit.fill)),
    ));
  }
}
