import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({super.key});

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
          "History",
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFF9A8C8C), width: 0.5)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      color: Style.MainBColor,
                      child: Text(
                        "Journey time : 20 Aug   5 AM ",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_border_outlined,
                      color: Color(0xFFF4A815),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "YY Travel",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "A62",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF574B4B)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Delhi",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 10),
                              Image.asset("assets/images/Vector1.png",
                                  scale: 4.0),
                              SizedBox(width: 10),
                              Text(
                                "Noida",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "1h 25m",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Style.MainBColor),
                            child: Text(
                              "Book Again",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFF9A8C8C), width: 0.5)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      color: Style.MainBColor,
                      child: Text(
                        "Journey time : 20 Aug   5 AM ",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_border_outlined,
                      color: Color(0xFFF4A815),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "YY Travel",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "A62",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF574B4B)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Delhi",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 10),
                              Image.asset("assets/images/Vector1.png",
                                  scale: 4.0),
                              SizedBox(width: 10),
                              Text(
                                "Noida",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "1h 25m",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Style.MainBColor),
                            child: Text(
                              "Book Again",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xFF9A8C8C), width: 0.5)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      color: Style.MainBColor,
                      child: Text(
                        "Journey time : 20 Aug   5 AM ",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_border_outlined,
                      color: Color(0xFFF4A815),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "YY Travel",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "A62",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF574B4B)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Delhi",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 10),
                              Image.asset("assets/images/Vector1.png",
                                  scale: 4.0),
                              SizedBox(width: 10),
                              Text(
                                "Noida",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "1h 25m",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Style.MainBColor),
                            child: Text(
                              "Book Again",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
