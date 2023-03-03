import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

class ConCashHistory extends StatefulWidget {
  ConCashHistory({super.key});

  @override
  State<ConCashHistory> createState() => _ConCashHistoryState();
}

class _ConCashHistoryState extends State<ConCashHistory> {
  bool isTapped = false;

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
          "Cash History",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pay By Cash",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      SizedBox(height: 5),
                      Text("( Note ) :",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
                    ],
                  ),
                  Spacer(),
                  Text("Total passenger :24",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color(0xFFABABAB),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Color(0xFFC8BFBF)),
                              bottom: BorderSide(color: Color(0xFFB8AFAF)))),
                      child: Text("Name",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
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
                  child: Text("Recieved",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
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
                  child: Text("Secret Key",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                )),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Column(
                    children: [
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
                          InkWell(
                              onTap: () {
                                isTapped
                                    ? setState(() {
                                        isTapped = false;
                                      })
                                    : setState(() {
                                        isTapped = true;
                                      });
                              },
                              child: Icon(Icons.keyboard_arrow_down,
                                  color: Colors.black)),
                          Spacer(),
                          Text("₹ 314",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Style.MainBColor)),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      constraints: BoxConstraints(
                                          maxHeight: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                          maxWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2)),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                isTapped
                                    ? Container()
                                    : Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Style.MainBColor),
                                        child: Text("Approved",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white)),
                                      ),
                              ],
                            ),
                          )
                        ],
                      ),
                      isTapped
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Style.MainBColor.withOpacity(0.23),
                                  borderRadius: BorderRadius.circular(21),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 1),
                                        blurRadius: 6,
                                        spreadRadius: 2,
                                        color: Colors.black.withOpacity(0.25)),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Board From",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black)),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                  color: Color(0xFFDB8300)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2,
                                                            horizontal: 10),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: Colors.black),
                                                    child: Text("@ 15:17 Pm",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .white)),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text("Bus Stop A",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors
                                                                  .white)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Text("Payment : Cash",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black))
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Drop On",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black)),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(11),
                                                  color: Color(0xFF00829E)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2,
                                                            horizontal: 10),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: Colors.black),
                                                    child: Text("@ 16:17 Pm",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .white)),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text("Bus Stop B",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Colors
                                                                  .white)),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Style.MainBColor),
                                          child: Text("Approved",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 0.5,
                  color: Color(0xFFABABAB),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
