import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/conhomepage.dart';

class ConMap extends StatelessWidget {
  const ConMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/hospital.png", scale: 3.5),
                          SizedBox(width: 10),
                          Text("2.3KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/petrol.png", scale: 3.5),
                          SizedBox(width: 10),
                          Text("21.8KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/filled.png", scale: 3.5),
                          SizedBox(width: 10),
                          Text("1.9KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Next Stop : 2 min (bus stop B)",
                          titlePadding: EdgeInsets.only(top: 20),
                          titleStyle: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          content: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Style.MainBColor,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text("Traffic - High",
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                alignment: Alignment.center,
                                child: Text(
                                    "Do You Want To Skip Next Stop  (bus stop B) ",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Get.to(() => ConHome());
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 50),
                                  decoration: BoxDecoration(
                                    color: Style.MainBColor,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Text("Skip",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                ),
                              ),
                            ],
                          ));
                    },
                    child: Image.asset("assets/images/map1.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
