import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/ticketinformation.dart';
import 'package:my_bus_user_panel/widget/bottombar.dart';

class TicketPage extends StatelessWidget {
  var busDetails;
  TicketPage({super.key, required this.busDetails});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          toolbarHeight: 70,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(busDetails['name'],
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              Text.rich(TextSpan(
                  text: busDetails['arrival_time'],
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: " to ${busDetails['destination_time']}",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    TextSpan(
                        text: "  Tue, 15 Nov",
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black))
                  ])),
              Text("${busDetails['arrival']} To ${busDetails['destination']}",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))
            ],
          ),
          actions: [
            const Icon(Icons.replay, color: Colors.black),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                decoration: BoxDecoration(
                    border: Border.all(color: Style.MainBColor),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Seat on this route is high",
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " ${busDetails['NumberofSeats']} Seat’s Available for Your Location",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Style.MainBColor),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          "assets/images/best_price.png",
                          scale: 3.5,
                        ),
                      ),
                      Text(
                        "Why Book This Bus ? ",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          "assets/images/bus_icon.png",
                          scale: 3.5,
                        ),
                      ),
                      Text(
                        "Boarding / Dropping ",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          "assets/images/document.png",
                          scale: 3.5,
                        ),
                      ),
                      Text(
                        "  Rating & Review",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Why Book This Bus ? ",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Style.AllBoxColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Style.MainBColor),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 2),
                                blurRadius: 12,
                                color: Colors.black.withOpacity(0.25))
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/safe.png",
                                      scale: 3.5),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Safe",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/calender1.png",
                                      scale: 3.5),
                                  const SizedBox(width: 5),
                                  Text(
                                    "On-time",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/images/high.png",
                                      scale: 3.5),
                                  const SizedBox(width: 5),
                                  Text(
                                    "High",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Style.MainBColor)),
                                  child: const DropSeat(),
                                ),
                                const Spacer(),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Style.MainBColor)),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/location.png",
                                          scale: 3),
                                      Text("Live Tracking ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Boarding & Dropping Point",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        TabBar(
                            labelColor: Colors.black,
                            labelStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            indicatorColor: Colors.black,
                            tabs: [
                              const Tab(
                                text: "Boarding Point",
                              ),
                              const Tab(
                                text: "Dropping Point",
                              )
                            ]),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: const Color(0xFFDB8300)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.black),
                                    child: Text("@ 15:17 Pm",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text("Bus Stop Am",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: const Color(0xFF00829E)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.black),
                                    child: Text("@ 15:17 Pm",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text("Bus Stop Am",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: const Color(0xFF6A1762)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.black),
                                    child: Text("@ 15:17 Pm",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white)),
                                  ),
                                  const SizedBox(width: 5),
                                  Text("Bus Stop Am",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                  "Lorem ipsum dolor sit amet consectetur. Aenean tristique eu sit tortor maecenas.-",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            )
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        bottom: 15,
                        child: InkWell(
                          onTap: () {
                            Get.to(() =>  TicketInformation(bus: busDetails));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 150),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Style.MainBColor),
                            child: Text("Confirm",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          child: BottomBar(),
        ),
      ),
    );
  }
}

class DropSeat extends StatelessWidget {
  const DropSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      onChanged: (value) {},
      hint: Text(
        "Select Your Seat’s",
        style: GoogleFonts.poppins(
            fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      borderRadius: BorderRadius.circular(5),
      items: [
        DropdownMenuItem(
            child: Text("1",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "1"),
        DropdownMenuItem(
            child: Text("2",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "2"),
        DropdownMenuItem(
            child: Text("3",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "3"),
        DropdownMenuItem(
            child: Text("4",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "4"),
        DropdownMenuItem(
            child: Text("5",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "5"),
        DropdownMenuItem(
            child: Text("6",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            value: "6"),
      ],
    );
  }
}
