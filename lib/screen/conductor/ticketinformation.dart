import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

class ConTicketInformation extends StatelessWidget {
  const ConTicketInformation({super.key});

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
          "Request Of scanner",
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.call, color: Colors.white),
              Text("Call",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              SizedBox(height: 3)
            ],
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Color(0xFFC8BFBF)),
                        bottom: BorderSide(color: Color(0xFFB8AFAF)))),
                child: Text("Name",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              )),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: Color(0xFFC8BFBF)),
                        bottom: BorderSide(color: Color(0xFFB8AFAF)))),
                child: Text("Request",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text.rich(TextSpan(
                    text: "Request",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: "(3 pending )",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Style.MainBColor))
                    ])),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                ),
                title: Text("Manish Gupta",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF2BD82B)),
                  child: Text("Send Scanner",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                ),
                title: Text("Manish Sharma",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF2BD82B)),
                  child: Text("Send Scanner",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                ),
                title: Text("Yash Chaudhary",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                trailing: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF2BD82B)),
                  child: Text("Send Scanner",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Color(0xFFABABAB),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pay By Cash (Payment Pending)",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                    ),
                    SizedBox(width: 20),
                    Text("Manish Sharma",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    Spacer(),
                    Text("₹ 345",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Style.MainBColor)),
                    SizedBox(width: 20),
                    Icon(Icons.call, color: Colors.green)
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                    ),
                    SizedBox(width: 20),
                    Text("Nirmal Escobar +2",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    Spacer(),
                    Text("₹ 400",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Style.MainBColor)),
                    SizedBox(width: 20),
                    Icon(Icons.call, color: Colors.green)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
