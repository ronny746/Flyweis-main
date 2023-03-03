import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/admin_controller.dart';
import 'package:my_bus_user_panel/controllers/profile_controller.dart';

class ConHelpAndSupport extends StatelessWidget {
  ConHelpAndSupport({super.key});

  final ProfileController profileController = Get.put(ProfileController());
  final AdminController adminController = Get.put(AdminController());

  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController nameCtrl = TextEditingController();

  _load() async {
    await profileController.getHelpAndSupportDetails();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load();
    });
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
          "Admin Help and Support",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: GetBuilder<ProfileController>(
            init: ProfileController(),
            builder: (profileController) {
              if (profileController.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (profileController.helpList!.terms!.isEmpty) {
                return Center(
                  child: Text('Currently unavailable'),
                );
              }
              return ListView.builder(
                  itemCount: profileController.helpList!.terms!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Name : ',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              profileController.helpList!.terms![index].name!,
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Spacer(),
                            InkWell(
                                onTap: () async {
                                  String result = await adminController
                                      .deleteHelpAndSupport(
                                          helpId: profileController
                                              .helpList!.terms![index].sId
                                              .toString());
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(result),
                                    backgroundColor: Colors.green,
                                  ));
                                  await profileController
                                      .getHelpAndSupportDetails();
                                },
                                child: Icon(Icons.delete)),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              'Email : ',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              profileController.helpList!.terms![index].email!,
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    );
                  });
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                // notiCtrl.text = controller
                //     .notificationsList!.data![index].message!;
                return AlertDialog(
                  title: Text('Enter Notification to update'),
                  content: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: nameCtrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter name';
                            }
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            hintText: 'Name',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: emailCtrl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter email';
                            }
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          nameCtrl.clear();
                          emailCtrl.clear();
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () async {
                          if (validateForm()) {
                            await adminController.addHelpAndSupport(
                                name: nameCtrl.text.trim(),
                                email: emailCtrl.text.trim());
                            Navigator.of(context).pop();
                            nameCtrl.clear();
                            emailCtrl.clear();
                            await profileController.getHelpAndSupportDetails();
                          }
                        },
                        child: Text('Update')),
                  ],
                );
              });
        },
      ),
    );
  }

  bool validateForm() {
    final form = formKey.currentState;
    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
