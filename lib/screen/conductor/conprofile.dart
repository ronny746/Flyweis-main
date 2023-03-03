import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/conbottombar.dart';
import 'package:my_bus_user_panel/screen/conductor/conhelpandsupport.dart';
import 'package:my_bus_user_panel/screen/conductor/conpassenger.dart';
import 'package:my_bus_user_panel/screen/conductor/conwallet.dart';
import 'package:my_bus_user_panel/screen/helpandsupport.dart';
import 'package:my_bus_user_panel/screen/notification.dart';
import 'package:my_bus_user_panel/screen/privacy.dart';
import 'package:my_bus_user_panel/screen/rating.dart';

class ConProfile extends StatelessWidget {
  const ConProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: ConBottomBar(),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: const BoxDecoration(
                      color: Style.MainBColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      const Spacer(),
                      Column(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                          ),
                          Text(
                            "Priyanka Aher",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text(
                            "9874651230",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: Colors.blue),
                        title: Text(
                          "Personal Information",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 20),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Text(
                        "Apperence",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      ListTile(
                        leading:
                            Image.asset("assets/images/night.png", scale: 3.5),
                        title: Text(
                          "Night Mode",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      ListTile(
                        leading:
                            Image.asset("assets/images/text.png", scale: 3.5),
                        title: Text(
                          "Change text size",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 20),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Text(
                        "Other Setting",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      InkWell(
                        onTap: () {
                          Get.to(() => ConPassenger());
                        },
                        child: ListTile(
                          leading:
                              const Icon(Icons.payment, color: Colors.black),
                          title: Text(
                            "Passenger List",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => ConWallet());
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/transaction.png",
                              scale: 3.5, color: Colors.black),
                          title: Text(
                            "Transaction History",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: Image.asset("assets/images/security.png",
                              scale: 3.5, color: Colors.black),
                          title: Text(
                            "Passes Traveller List",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ConHelpAndSupport();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/invest.png",
                              scale: 3.5),
                          title: Text(
                            "Help & Support",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => Rating());
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/feedback.png",
                              scale: 3.5),
                          title: Text(
                            "Feedback",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 20),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
