import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/screen/conductor/controller/passanger_controller.dart';

class ConPassenger extends StatelessWidget {
  const ConPassenger({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PassengerController());
    return Scaffold(
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
            "Passenger List",
            style: GoogleFonts.plusJakartaSans(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.call, color: Colors.white),
                Text(
                  "Call",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/send.png", scale: 4.5),
                Text(
                  "Send Scanner",
                  maxLines: 2,
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
          ],
        ),
        body: GetBuilder<PassengerController>(builder: (controller) {
          if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Passenger's List",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Text(
                              "( Note ) :",
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              "Every  passenger will have to confirm the ticket before the next 2 stops comes,absent-if the above condition fails the ticket is cancelled",
                              style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Style.MainBColor),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Total passenger :${controller.passangerList.length}",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              "Confirmed           :94",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green.shade300),
                            ),
                            Text(
                              "Waiting                : 02 ",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Style.MainBColor),
                            ),
                            Text(
                              "Passes                 : 02 ",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.purple.shade700),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Style.BSheetColor,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              border: Border(
                                  left: BorderSide(color: Color(0xFFC8BFBF)),
                                  bottom:
                                      BorderSide(color: Color(0xFFB8AFAF)))),
                          child: Text("Name",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Color(0xFFC8BFBF)),
                              bottom: BorderSide(color: Color(0xFFB8AFAF)))),
                      child: Text("Seats",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    )),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Color(0xFFC8BFBF)),
                              bottom: BorderSide(color: Color(0xFFB8AFAF)))),
                      child: Text("Status",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    )),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.passangerList.length,
                  itemBuilder: (context, index) {
                    var item = controller.passangerList[index];
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                              radius: 20,
                            ),
                            Text(item['name'].toString()+ "+5",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                            Text("4 W - 2 M ",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                            Text("Confirmed",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green))
                          ],
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          );
        }));
  }
}
