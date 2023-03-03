import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/screen/booking.dart';

class Verfiy extends StatefulWidget {
  final bool isVerified;
  const Verfiy({super.key, required this.isVerified});

  @override
  State<Verfiy> createState() => _VerfiyState();
}

class _VerfiyState extends State<Verfiy> {
  @override
  void initState() {
    // TODO: implement initState
    navigatetopage();
    super.initState();
  }

  navigatetopage() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.to(() => const Booking(
          DBox: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Vector.png",
              scale: 3.5,
            ),
            Text(
              widget.isVerified ? "Verified" : "Paid Successfully",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
