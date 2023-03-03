import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/create_bookingController.dart';
import 'package:my_bus_user_panel/screen/verify.dart';
import 'package:my_bus_user_panel/widget/button.dart';

class TicketInformation1 extends StatelessWidget {
  var bus;
  TicketInformation1({super.key, required this.bus});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BookingController());
    return SafeArea(
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
                  Text(bus['name'],
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  Text.rich(TextSpan(
                      text: "${bus['arrival_time']}",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: " to ${bus['destination_time']}",
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
                  Text("${bus['arrival']} To ${bus['destination']}",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black))
                ],
              )),
          body: GetBuilder<BookingController>(builder: ((controller) {
            controller.busDetails = bus;
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFE3E3E3),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Information",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 12,
                                  color: Colors.black.withOpacity(0.25))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            children: [
                              TextField(
                                controller: controller.emailController,
                                decoration: InputDecoration(
                                  hintText: "Email. ID",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "+91",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            "Phone",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Image.asset("assets/images/tag.png",
                                                scale: 3.5),
                                            const SizedBox(width: 10),
                                            Expanded(
                                              child: TextField(
                                                controller:
                                                    controller.phoneController,
                                                decoration: InputDecoration(
                                                  hintText: "1234567890",
                                                  hintStyle:
                                                      GoogleFonts.poppins(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: true, onChanged: ((value) {})),
                                  Text(
                                    "Save this email as my primery",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/whatsapp_icon.png',
                                    color: Colors.green,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                        "Send booking details and updates on whatsApp number 9876543210",
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ),
                                  Switch(
                                    activeColor: Style.MainBColor,
                                    value: false,
                                    onChanged: ((value) {}),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Text(
                        "Passenger Information",
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
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 12,
                                  color: Colors.black.withOpacity(0.25))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text.rich(TextSpan(
                                      text: "Primary Passenger ",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: " seats F4",
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.black)),
                                      ])),
                                  const Spacer(),
                                  Text("Reserved (male)",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black))
                                ],
                              ),
                              TextField(
                                controller: controller.passengerController,
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ),
                              TextField(
                                controller: controller.ageController,
                                decoration: InputDecoration(
                                  hintText: "Age",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      InkWell(
                          onTap: () {
                            Get.defaultDialog(
                                radius: 10,
                                titlePadding: const EdgeInsets.only(top: 20),
                                title: "Are U Sure To Confirm Your Ticket",
                                titleStyle: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                                content: Column(
                                  children: [
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01),
                                    Container(
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              controller.oaderWithRazorpay();
                                              //controller.bookingSeat();
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 30),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: Style.MainBColor),
                                              child: Text(
                                                "Yes",
                                                style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          const VerticalDivider(
                                            thickness: 1,
                                            color: Colors.black,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 30),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Style.MainBColor),
                                            child: Text(
                                              "No",
                                              style: GoogleFonts.inter(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                          child: const Button(text: "Proceed To Pay"))
                    ],
                  ),
                ),
              ),
            );
          }))),
    );
  }
}
