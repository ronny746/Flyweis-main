import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/conhomepage.dart';
import 'package:my_bus_user_panel/screen/homepage.dart';

class SelecttheService extends StatelessWidget {
  const SelecttheService({super.key});

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                child: Image.asset("assets/images/logo.png", scale: 3.5),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(27),
                      topRight: Radius.circular(27)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Your Preference",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropDownAdmin(),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Style.MainBColor,
                        ),
                        DropDownPersonal()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownAdmin extends StatelessWidget {
  const DropDownAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2 / 5,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Style.MainBColor),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
      child: DropdownButton(
        onChanged: (value) {
          Get.to(() => ConHome());
        },
        isExpanded: true,
        dropdownColor: Style.MainBColor,
        borderRadius: BorderRadius.circular(10),
        hint: Text("Admin",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Style.MainBColor)),
        iconEnabledColor: Style.MainBColor,
        items: [
          DropdownMenuItem(
            value: "Admin",
            child: Text(
              "Admin account for the bus company user’s",
              maxLines: 2,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class DropDownPersonal extends StatelessWidget {
  const DropDownPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2 / 5,
      decoration: BoxDecoration(
          color: Style.MainBColor,
          border: Border.all(width: 3, color: Style.MainBColor),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
      child: DropdownButton(
        onChanged: (value) {
          Get.to(() => Homepage());
        },
        isExpanded: true,
        dropdownColor: Style.MainBColor,
        borderRadius: BorderRadius.circular(10),
        hint: Text("Pesonal",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
        iconEnabledColor: Colors.white,
        items: [
          DropdownMenuItem(
            value: "Admin",
            child: Text(
              // "For personal your use",
              "Personal",
              maxLines: 2,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
