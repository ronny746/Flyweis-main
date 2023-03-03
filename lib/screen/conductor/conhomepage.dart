import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/conbottombar.dart';
import 'package:my_bus_user_panel/screen/conductor/conmap.dart';
import 'package:my_bus_user_panel/screen/conductor/connotification.dart';
import 'package:my_bus_user_panel/screen/conductor/conpassenger.dart';
import 'package:my_bus_user_panel/screen/conductor/conprofile.dart';
import 'package:my_bus_user_panel/screen/conductor/controller/passanger_controller.dart';

class ConHome extends StatelessWidget {
  const ConHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PassengerController());
    
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        child: ConBottomBar(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFE4E4E4),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/home_image.png",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 70),
              child: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.to(() => const ConProfile());
                                },
                                child: const Icon(Icons.menu, color: Colors.white)),
                            const Spacer(),
                            InkWell(
                                onTap: () {
                                  Get.to(() => const ConNotification());
                                },
                                child: const Icon(Icons.notifications,
                                    color: Colors.white))
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Style.HomeBColor,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 0),
                                    blurRadius: 4,
                                    spreadRadius: 1.2,
                                    color: Colors.black.withOpacity(0.25))
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 8),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "29/09/2022",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "Saturday",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      "Total passenger : 98",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    Text.rich(TextSpan(
                                        text: "Bus No :",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                            text: "UP  57 BE  4786",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          )
                                        ])),
                                    const Spacer(),
                                    Text.rich(TextSpan(
                                        text: "Drive Name",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                            text: ": Arun Dhande",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          )
                                        ]))
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Style.DividerColor,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset("assets/images/color_bus.png",
                                      scale: 3.5),
                                  Column(
                                    children: [
                                      Text.rich(TextSpan(
                                          text: "Delhi   ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text: "To   ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            TextSpan(
                                              text: "Noida",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            )
                                          ])),
                                      Text.rich(TextSpan(
                                          text: "20:00 PM    to   21:30 PM  ",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                          children: [
                                            TextSpan(
                                              text: "( 1:30hr )",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                            ),
                                          ]))
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Style.MainBColor),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.star,
                                            size: 15, color: Colors.white),
                                        const SizedBox(width: 5),
                                        Text(
                                          "4.1",
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/conhome.png",
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(() => const ConMap());
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 13),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Style.MainBColor),
                                          child: Text("Track Route ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white)),
                                        ),
                                      ))
                                ],
                              ),
                              Container(
                                color: const Color(0xFF353535),
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/hospital.png",
                                            scale: 3.5),
                                        const SizedBox(width: 10),
                                        Text("2.3KM",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/petrol.png",
                                            scale: 3.5),
                                        const SizedBox(width: 10),
                                        Text("21.8KM",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/images/filled.png",
                                            scale: 3.5),
                                        const SizedBox(width: 10),
                                        Text("1.9KM",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.circle,
                                            color: Style.MainBColor),
                                        const SizedBox(width: 5),
                                        Text("Live Tracking",
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black))
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text("Next Stop : 2 min (bus stop B)",
                                            style: GoogleFonts.poppins(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        const SizedBox(height: 2),
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                  color: Style.MainBColor),
                                              child: Text("Traffic-High",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white)),
                                            ),
                                            const SizedBox(width: 5),
                                            Text("Skip",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w400,
                                                    color: Style.MainBColor))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 0.5,
                                color: Style.DividerColor,
                              ),
                              Image.asset("assets/images/graph.png", scale: 4)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),
                          padding:
                              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Boarding & Dropping Point ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              const SizedBox(height: 5),
                              InkWell(
                                onTap: () {
                                  Get.bottomSheet(Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(14),
                                            topRight: Radius.circular(14)),
                                        color: Style.BSheetColor),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Style.MainBColor,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Boarding Point",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(11),
                                                        color:
                                                            const Color(0xFFDB8300)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                                  vertical: 2,
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  Colors.black),
                                                          child: Text(
                                                              "@ 15:17 Pm",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                        const SizedBox(width: 5),
                                                        Text("Bus Stop Am",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  Expanded(
                                                    child: Text(
                                                        "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(11),
                                                        color:
                                                            const Color(0xFF00829E)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                                  vertical: 2,
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  Colors.black),
                                                          child: Text(
                                                              "@ 15:17 Pm",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                        const SizedBox(width: 5),
                                                        Text("Bus Stop Am",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  Expanded(
                                                    child: Text(
                                                        "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(11),
                                                        color:
                                                            const Color(0xFF6A1762)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                                  vertical: 2,
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              color:
                                                                  Colors.black),
                                                          child: Text(
                                                              "@ 15:17 Pm",
                                                              style: GoogleFonts.poppins(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white)),
                                                        ),
                                                        const SizedBox(width: 5),
                                                        Text("Bus Stop Am",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20),
                                                  Expanded(
                                                    child: Text(
                                                        "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                                },
                                child: Container(
                                  child: Row(
                                    children: [
                                      Text("Boarding point",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                      const Spacer(),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 17,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Passenger's List",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)),
                                        const SizedBox(width: 5),
                                        const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text("Total passenger :98",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                        Text("Confirm   :96",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.green)),
                                        Text("Waiting   :02",
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Style.MainBColor))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 5),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const ConPassenger());
                                },
                                child: Container(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(13),
                                        bottomRight: Radius.circular(13),
                                      ),
                                      color: Style.MainBColor,
                                    ),
                                    child: Text("View All",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white))),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                    Positioned(
                      top: 50,
                      child: Container(
                        height: 90,
                        // width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFFFE0E0),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, -3),
                                  blurRadius: 74,
                                  color: Colors.black.withOpacity(0.25))
                            ]),
                        child: Image.asset("assets/images/bus.png", scale: 5.5),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
