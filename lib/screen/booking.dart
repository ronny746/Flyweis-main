import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/widget/slider.dart';

class Booking extends StatefulWidget {
  final bool DBox;
  const Booking({super.key, required this.DBox});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  void initState() {
    // TODO: implement initState
    // widget.DBox
    //     ? Get.defaultDialog(
    //         title: "Do You Want To Update On ",
    //         titleStyle: GoogleFonts.poppins(
    //           fontSize: 14,
    //           fontWeight: FontWeight.w500,
    //           color: Colors.black,
    //         ),
    //         content: Column(
    //           children: [
    //             Row(
    //               children: [
    //                 Radio(
    //                     value: null, groupValue: null, onChanged: ((value) {})),
    //                 Text(
    //                   "Email",
    //                   style: GoogleFonts.poppins(
    //                     fontSize: 14,
    //                     fontWeight: FontWeight.w400,
    //                     color: Colors.black,
    //                   ),
    //                 )
    //               ],
    //             ),
    //             SizedBox(height: 10),
    //             Row(
    //               children: [
    //                 Radio(
    //                     value: null, groupValue: null, onChanged: ((value) {})),
    //                 Text(
    //                   "Email",
    //                   style: GoogleFonts.poppins(
    //                     fontSize: 14,
    //                     fontWeight: FontWeight.w400,
    //                     color: Colors.black,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ],
    //         ),
    //         textConfirm: "Allow",
    //         textCancel: "Deny")
    //     : Container();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("My Booking",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: "Arun Travels ",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: "Tue, 15 nov",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black))
                            ]),
                      ),
                      const SizedBox(height: 3),
                      Text.rich(
                        TextSpan(
                            text: "2:00 PM ",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: " to  21:30 PM",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black))
                            ]),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset("assets/images/verify.png", scale: 3.5),
                  const SizedBox(width: 3),
                  Text("Confirmed",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.green))
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("Secret Key  :  234567",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Text(
                        "Note : Without Secret Key U can’t Be Able To Travel ",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Style.MainBColor)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Style.AllBoxColor,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 4),
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 21)
                    ],
                    border: Border.all(color: Style.MainBColor)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/bus.png", scale: 3.5),
                          Column(
                            children: [
                              Text("From",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              const SizedBox(height: 3),
                              Text("Delhi",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                          Column(
                            children: [
                              Text("20:00 PM    to   21:30 PM",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text("15 % OFF",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Style.MainBColor)),
                              Text("From ₹ 345",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black))
                            ],
                          ),
                          Column(
                            children: [
                              Text("To",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              const SizedBox(height: 3),
                              Text("Noida",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 10),
                        child: Text(
                          "A62",
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text.rich(TextSpan(
                              text: "Bus No : ",
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
                          Text(
                            "Date : 25-06-2002",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black))),
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.download, color: Colors.blue),
                          Text("Download E-TICKET ",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide(color: Colors.black),
                      )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/whatsapp_icon.png',
                            color: Colors.green,
                          ),
                          Text("Share Trip",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Style.AllBoxColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/route.png", scale: 3.5),
                        const SizedBox(
                          height: 3,
                        ),
                        Text("Track Route",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 1.5,
                      color: Style.MainBColor,
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/position.png", scale: 3.5),
                        const SizedBox(
                          height: 3,
                        ),
                        Text("Bus Position",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Style.MainBColor),
                  color: Style.AllBoxColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Text(
                        "Cancel Ticket",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        "Within 10 min",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Style.MainBColor),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CarouselWithIndicatorDemo(),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
