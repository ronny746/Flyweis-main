import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/profile_controller.dart';

class Privacy extends StatelessWidget {
  Privacy({super.key});

  final ProfileController profileController = Get.put(ProfileController());

  _load() async {
    await profileController.getPrivacyDetails();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load();
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.MainBColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Privacy",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: GetBuilder<ProfileController>(builder: (controller) {
        if (controller.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: ListView.builder(
              itemCount: controller.privacyList.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.privacyList[index],
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  ],
                );
              }),
        );
      }),
    );
  }
}
