import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/ticketinformation1.dart';

class TicketInformation extends StatelessWidget {
  var bus;
   TicketInformation({super.key,required this.bus});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Style.MainBColor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            title: Text(
              "${bus['arrival']} To ${bus['destination']}",
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              const TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorWeight: 1.0,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  tabs: [
                    Tab(
                      text: "BORDING",
                    ),
                    Tab(text: "DROPING")
                  ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Get.defaultDialog(
                      radius: 10,
                      titlePadding: const EdgeInsets.only(top: 20),
                      title: "Ticket Is For",
                      content: Column(
                        children: [
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => TicketInformation1(bus: bus,));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Style.MainBColor),
                                      child: Text(
                                        "Self",
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const VerticalDivider(
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Get.to(() => TicketInformation1(bus: bus,));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Style.MainBColor),
                                      child: Text(
                                        "Other",
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ));
                },
                child: ListTile(
                  leading: Radio(
                      value: null, groupValue: null, onChanged: ((value) {})),
                  title: Text(
                    "Lorem ipsum dolor sit amet consectetur.",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Lorem ipsum dolor sit amet consectetur. Egestas nec integer risus aenean suspendisse dignissim integer.",
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0C0B0B)),
                  ),
                  trailing: Text(
                    "17:45",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF0C0B0B)),
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFC7C7C7),
                thickness: 1,
              ),
              ListTile(
                leading: Radio(
                    value: null, groupValue: null, onChanged: ((value) {})),
                title: Text(
                  "Lorem ipsum dolor sit amet consectetur.",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet consectetur. Egestas nec integer risus aenean suspendisse dignissim integer.",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF0C0B0B)),
                ),
                trailing: Text(
                  "17:45",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF0C0B0B)),
                ),
              ),
              const Divider(
                color: Color(0xFFC7C7C7),
                thickness: 1,
              ),
            ],
          )),
    );
  }
}
