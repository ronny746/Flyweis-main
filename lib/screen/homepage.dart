import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/home_controller.dart';
import 'package:my_bus_user_panel/screen/distance.dart';
import 'package:my_bus_user_panel/screen/history.dart';
import 'package:my_bus_user_panel/widget/bottombar.dart';
import 'package:my_bus_user_panel/widget/button.dart';
import 'package:my_bus_user_panel/widget/slider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: const BottomAppBar(
              child: BottomBar(),
            ),
            body: GetBuilder<HomeController>(builder: (controller) {
              return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Image.asset("assets/images/home_image.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SingleChildScrollView(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04),
                                Row(
                                  children: [
                                    Text(
                                      "Hii ${controller.userData.userName},",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.menu, color: Colors.white)
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.07),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Style.HomeBColor,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 0),
                                            blurRadius: 4,
                                            spreadRadius: 1.2,
                                            color:
                                                Colors.black.withOpacity(0.25))
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 15),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Avaiable passenger : 98",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                          const Spacer(),
                                          PopupMenuButton(
                                              icon: const Icon(
                                                Icons.tune_rounded,
                                                color: Colors.black,
                                              ),
                                              constraints: BoxConstraints(
                                                  minHeight:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.1,
                                                  minWidth:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.4),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              itemBuilder: (context) => [
                                                    const PopupMenuItem(
                                                        child: DropTraffic()),
                                                    PopupMenuItem(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "No. Of Seats",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize: 9,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                          const Spacer(),
                                                          Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                  hintText:
                                                                      "01",
                                                                  hintStyle: GoogleFonts.poppins(
                                                                      fontSize:
                                                                          9,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .grey)),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.015,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("assets/images/bus1.png",
                                              scale: 3.5),
                                          const SizedBox(width: 20),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 25),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "From",
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Style
                                                                .FromColor),
                                                  ),
                                                  TextField(
                                                    controller: controller
                                                        .fromController,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Enter Your Location",
                                                        hintStyle: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Style
                                                                    .FormtextColor),
                                                        suffixIcon: const Icon(
                                                          Icons.place_sharp,
                                                          color: Colors.black,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Icon(
                                            Icons.swap_vert_circle_rounded,
                                            color: Style.MainBColor,
                                            size: 50,
                                          ),
                                          SizedBox(width: 20)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("assets/images/bus2.png",
                                              scale: 3.5),
                                          const SizedBox(width: 20),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "To",
                                                    style: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Style
                                                                .FromColor),
                                                  ),
                                                  TextField(
                                                    controller:
                                                        controller.toController,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Enter Your Destination",
                                                        hintStyle: GoogleFonts
                                                            .plusJakartaSans(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Style
                                                                    .FormtextColor),
                                                        suffixIcon: const Icon(
                                                          Icons.place_sharp,
                                                          color: Colors.black,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image.asset("assets/images/time.png",
                                              scale: 3.5),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Timing",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Style
                                                              .FormtextColor),
                                                ),
                                                TextField(
                                                  controller: controller
                                                      .timmingController,
                                                  decoration: InputDecoration(
                                                    hintText: "3:30 AM",
                                                    hintStyle: GoogleFonts
                                                        .plusJakartaSans(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Style
                                                                .FormtextColor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                              "assets/images/calender.png",
                                              scale: 3.5),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Date",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Style
                                                              .FormtextColor),
                                                ),
                                                TextField(
                                                  controller:
                                                      controller.dateController,
                                                  decoration: InputDecoration(
                                                    hintText: "29/09/2022 ",
                                                    hintStyle:
                                                        GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Style
                                                                .FormtextColor),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await controller.getAllBuses();
                                         
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15, horizontal: 100),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Style.MainBColor),
                                          child:!controller.isLoading? Text(
                                            "Current Status",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ):const Center(child: CircularProgressIndicator())
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.005,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        padding:
                                            const EdgeInsets.only(right: 28),
                                        child: Text(
                                          "All 14 Buses Available",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Style.MainBColor),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                      ),
                                    ]),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 2),
                                            blurRadius: 10,
                                            color:
                                                Colors.black.withOpacity(0.25))
                                      ],
                                      color: Style.HomeBColor),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Row(children: [
                                    Text(
                                      "OFFERS",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "View All",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ]),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                CarouselWithIndicatorDemo(),
                                const SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 1),
                                            blurRadius: 14,
                                            color:
                                                Colors.black.withOpacity(0.25))
                                      ],
                                      color: const Color(0xFFFDEFEF)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("Current Pass ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Get.to(() => History());
                                                },
                                                child: Text(
                                                  "Daily Pass",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/qrcode.png",
                                                    scale: 4,
                                                    color: Colors.black,
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    "Show QR",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Style.MainBColor),
                                                  ),
                                                ],
                                              ),
                                              const VerticalDivider(
                                                thickness: 1,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                "Touriest pass",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/qrcode.png",
                                                    scale: 4,
                                                    color: Colors.black,
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    "Show QR",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Style.MainBColor),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 50)
                              ],
                            ),
                            Positioned(
                              top: 70,
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
                                child: Image.asset("assets/images/bus.png",
                                    scale: 5.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })));
  }
}

class DropTraffic extends StatelessWidget {
  const DropTraffic({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      onChanged: (value) {},
      hint: Text(
        "Bus Traffic",
        style: GoogleFonts.poppins(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      isExpanded: true,
      borderRadius: BorderRadius.circular(5),
      items: [
        DropdownMenuItem(
            value: "High",
            child: Text("High",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black))),
        DropdownMenuItem(
            value: "Moderate",
            child: Text("Moderate",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black))),
        DropdownMenuItem(
            value: "Normal",
            child: Text("Normal",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)))
      ],
    );
  }
}
