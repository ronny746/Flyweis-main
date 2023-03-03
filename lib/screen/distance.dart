import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/home_controller.dart';
import 'package:my_bus_user_panel/screen/ticketpage.dart';
import 'package:my_bus_user_panel/widget/bottombar.dart';
import 'package:my_bus_user_panel/widget/slider.dart';

class Distance extends StatelessWidget {
  const Distance({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return GetBuilder<HomeController>(builder: ((controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.fromController.text} - ${controller.toController.text}",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                "8 Aug",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              )
            ],
          ),
          actions: const [
            Icon(
              Icons.replay,
              color: Colors.black,
            ),
            SizedBox(width: 10)
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          child: BottomBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselWithIndicatorDemo(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All ${controller.allbusss.length} Buses Available",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Style.MainBColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.separated(physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.allbusss.length,
                        separatorBuilder: ((context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        }),
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          var item = controller.allbusss[index];
                          return InkWell(
                            onTap: () {
                              Get.to(() =>  TicketPage(busDetails: item));
                            },
                            child: Container(
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
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset("assets/images/bus.png",
                                                scale: 3.5),
                                            SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01),
                                            Text(
                                              item['name'].toString(),
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text.rich(TextSpan(
                                                      text: "Traffic : ",
                                                      style:
                                                          GoogleFonts.poppins(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.black),
                                                      children: [
                                                        TextSpan(
                                                            text: "High",
                                                            style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Style
                                                                    .MainBColor))
                                                      ])),
                                                  const SizedBox(width: 25),
                                                  Text(
                                                    "Arrive : ${item['arrival_time']}",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.green),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text("From",
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black)),
                                                      const SizedBox(height: 3),
                                                      Text(
                                                          item['arrival']
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                          "${item['arrival_time']}    to   ${item['destination_time']}",
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black)),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.001,
                                                      ),
                                                      Text("15 % OFF",
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Style
                                                                      .MainBColor)),
                                                      Text("From ₹ 345",
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black))
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("To",
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black)),
                                                      const SizedBox(height: 3),
                                                      Text(
                                                          item['destination']
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .plusJakartaSans(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black))
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
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
                                        Column(
                                          children: [
                                            Text(
                                              "Bus is on the way ",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "15 min left to arrived in your Location ",
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                      fontSize: 8,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.green),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }))
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}
