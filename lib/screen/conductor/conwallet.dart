import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/admin_controller.dart';
import 'package:my_bus_user_panel/screen/conductor/conbottombar.dart';
import 'package:my_bus_user_panel/screen/conductor/concashhistory.dart';

class ConWallet extends StatelessWidget {
  ConWallet({super.key});

  final AdminController adminController = Get.put(AdminController());

  _load() async {
    await adminController.getWalletBalance();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load();
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.MainBColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Wallet",
          style: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ConBottomBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("Total Balance",
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      PopupMenuButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          itemBuilder: (context) => [
                                PopupMenuItem(child:
                                    GetBuilder<AdminController>(
                                        builder: (controller) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Total",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black)),
                                      Row(
                                        children: [
                                          Text("Money Recived ",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black)),
                                          SizedBox(width: 15),
                                          Text("₹ ${controller.walletBalance}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black))
                                        ],
                                      ),
                                      Row(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Money Recived ",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black)),
                                              Text("( 3 passenger )",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Style.MainBColor)),
                                            ],
                                          ),
                                          SizedBox(width: 15),
                                          Text("₹ ${controller.walletBalance}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ],
                                  );
                                }))
                              ])
                    ],
                  ),
                  Spacer(),
                  GetBuilder<AdminController>(builder: (controller) {
                    if (controller.isLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Text(
                      "₹ ${controller.walletBalance}",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF00829E)),
                    );
                  })
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      title:
                          "Lorem ipsum dolor sit amet consectetur.Eu ultrices sagittis donec morbi egestas velit.",
                      titleStyle: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      content: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF2BD82B)),
                        child: Text("Send Scanner",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF2BD82B)),
                    child: Text("Send Scanner",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Get.to(() => ConCashHistory());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF266DCC)),
                    child: Text("Cash Payment",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Divider(
              thickness: 0.5,
              color: Style.BSheetColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text("Transaction History",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text("Added From Bank Account",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF333333))),
                        subtitle: Text("6 Days ago",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF808080))),
                        trailing: Text("+₹500",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2CB22C))),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Style.BSheetColor,
                      ),
                      ListTile(
                        title: Text("Transfer to Micheal",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF333333))),
                        subtitle: Text("6 Days ago",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF808080))),
                        trailing: Text("-₹150",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Style.MainBColor)),
                      ),
                    ],
                  );
                }),
                separatorBuilder: ((context, index) {
                  return Divider(
                    thickness: 0.5,
                    color: Style.BSheetColor,
                  );
                }),
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}

// class DropPayment extends StatelessWidget {
//   const DropPayment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//         hint: 
//         borderRadius: BorderRadius.circular(15),
//         items: [
//           DropdownMenuItem(
//               child:
//               value: "Total"),
//           DropdownMenuItem(
//             child: 
//             value: "Money Recived",
//           ),
//           DropdownMenuItem(
//             child: 
//             value: "Money Recived",
//           )
//         ],
//         onChanged: (value) {});
//   }
// }
