import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/widget/bottombar.dart';

class History extends StatelessWidget {
  History({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          "Bus Pass",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/send.png", scale: 4.5),
              Text(
                "Send",
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/qrcode.png", scale: 4.5),
              Text(
                "Scan",
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomBar(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            "Travel Easy",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Image.asset("assets/images/travel.png", scale: 3.5),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFAE9CF),
                  border: Border.all(width: 2.0, color: Color(0xFFDB8300)),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                leading: Radio(
                    value: null, groupValue: null, onChanged: ((value) {})),
                title: Text("Monthly Passes",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                subtitle: Text("Save upto 25% than your daily travel",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC3ECF5),
                  border: Border.all(width: 2.0, color: Color(0xFF00829E)),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                leading: Radio(
                    value: null, groupValue: null, onChanged: ((value) {})),
                title: Text("Yearly Passes",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                subtitle: Text("Save upto 25% than your daily travel",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF4CBF1),
                  border: Border.all(width: 2.0, color: Color(0xFF6A1762)),
                  borderRadius: BorderRadius.circular(6)),
              child: ListTile(
                leading: Radio(
                    value: null, groupValue: null, onChanged: ((value) {})),
                title: Text("Yearly Passes",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                subtitle: Text("Save upto 25% than your daily travel",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
