import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/conhomepage.dart';
import 'package:my_bus_user_panel/screen/conductor/conprofile.dart';
import 'package:my_bus_user_panel/screen/conductor/conwallet.dart';
import 'package:my_bus_user_panel/screen/history.dart';
import 'package:my_bus_user_panel/screen/homepage.dart';

class ConBottomBar extends StatelessWidget {
  const ConBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Style.MainBColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => ConHome());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.white),
                  Text(
                    "Home",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => ConWallet());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.account_balance_wallet, color: Colors.white),
                  Text(
                    "Wallets",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => ConProfile());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/person.png", scale: 4),
                  Text(
                    "Profile",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
