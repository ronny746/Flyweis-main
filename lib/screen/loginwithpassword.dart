import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/authcontroller.dart';
import 'package:my_bus_user_panel/screen/selecttheservice.dart';

class LoginwithPassword extends StatelessWidget {
  LoginwithPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AuthController());
    return GetBuilder<AuthController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/main_image.png"),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Style.MainBColor),
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                    child: Image.asset("assets/images/logo.png", scale: 3.5),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27)),
                      color: Style.MainBColor),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        "Welcome To",
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SIGN IN",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.028,
                            ),
                            Text(
                              "Mobile No :",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: TextFormField(
                                  controller: controller.phoneController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.phone),
                                      border: InputBorder.none,
                                      suffixIcon: InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.visibility,
                                          color: Colors.white,
                                        ),
                                      ))),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text(
                              "Password",
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white),
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: TextFormField(
                                  controller: controller.pasController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      border: InputBorder.none)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(() => SelecttheService());
                          controller.loginwithPass();
                        },
                        child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 50),
                            child: !controller.isLoading
                                ? Center(
                                    child: Text(
                                      "LOGIN",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Style.MainBColor),
                                    ),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator())),
                      ),
                      const Text("Or"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                controller.signInWithGoogle();
                              },
                              child: Image.asset(
                                "assets/images/google.png",
                                height: 30,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                controller.facebookLoging();
                              },
                              child: const Icon(
                                Icons.facebook,
                                size: 30,
                              )),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
