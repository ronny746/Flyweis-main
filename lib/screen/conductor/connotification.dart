import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/admin_controller.dart';
import 'package:my_bus_user_panel/screen/conductor/conbottombar.dart';

enum MessageType { all, unread }

class ConNotification extends StatefulWidget {
  const ConNotification({super.key});

  @override
  State<ConNotification> createState() => _ConNotificationState();
}

class _ConNotificationState extends State<ConNotification> {
  MessageType? selectedMessage = MessageType.all;

  final TextEditingController notiCtrl = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  final AdminController adminController = Get.put(AdminController());

  _load() async {
    await adminController.getNotifications();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load();
    });
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: ConBottomBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.adaptive.arrow_back,
                        ),
                      ),
                      SizedBox(width: 4),
                      GetBuilder<AdminController>(builder: (controller) {
                        return Text(
                          "Admin Notification (${controller.notificationsList == null ? '0' : '${controller.notificationsList!.data!.length}'} )",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        );
                      }),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.snackbar("Info", "No information at the moment");
                    },
                    child: const Icon(
                      Icons.info_outline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedMessage == MessageType.all
                          ? Style.MainBColor.withOpacity(.2)
                          : Style.MainBColor,
                      foregroundColor: selectedMessage == MessageType.all
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedMessage = MessageType.all;
                      });
                    },
                    child: const Text("All"),
                  ),
                  SizedBox(width: 15),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: selectedMessage == MessageType.unread
                          ? Style.MainBColor.withOpacity(.2)
                          : Style.MainBColor,
                      foregroundColor: selectedMessage == MessageType.unread
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        selectedMessage = MessageType.unread;
                      });
                    },
                    child: const Text("Unread"),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Expanded(
                  child: GetBuilder<AdminController>(builder: (controller) {
                if (controller.isLoading ||
                    controller.notificationsList == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                    itemCount: controller.notificationsList!.data!.length,
                    itemBuilder: (context, index) {
                      return NotificationWidget(
                        img: "assets/images/schedule.png",
                        message:
                            controller.notificationsList!.data![index].message,
                        onEdit: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                // notiCtrl.text = controller
                                //     .notificationsList!.data![index].message!;
                                return AlertDialog(
                                  title: Text('Enter Notification to update'),
                                  content: Form(
                                    key: formKey,
                                    child: TextFormField(
                                      controller: notiCtrl,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter a message';
                                        }
                                      },
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.all(8),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          borderSide: BorderSide(
                                            color: Colors.red,
                                          ),
                                        ),
                                        hintText: 'Notification',
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          notiCtrl.clear();
                                        },
                                        child: Text('Cancel')),
                                    TextButton(
                                        onPressed: () async {
                                          if (validateForm()) {
                                            await adminController
                                                .updateNotification(
                                              notificationId: controller
                                                  .notificationsList!
                                                  .data![index]
                                                  .sId
                                                  .toString(),
                                              newNoti: notiCtrl.text.trim(),
                                            );
                                            Navigator.of(context).pop();
                                            notiCtrl.clear();
                                          }
                                        },
                                        child: Text('Update')),
                                  ],
                                );
                              });
                        },
                      );
                    });
              }))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Enter Notification'),
                    content: Form(
                      key: formKey,
                      child: TextFormField(
                        controller: notiCtrl,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter a message';
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
                          hintText: 'Notification',
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            notiCtrl.clear();
                          },
                          child: Text('Cancel')),
                      TextButton(
                          onPressed: () async {
                            if (validateForm()) {
                              await adminController.sendNotification(
                                  notiTxt: notiCtrl.text.trim());
                              Navigator.of(context).pop();
                              notiCtrl.clear();
                            }
                          },
                          child: Text('Send')),
                    ],
                  );
                });
          }),
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

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    required this.message,
    this.onPressed,
    this.onEdit,
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  final String? message;
  final VoidCallback? onPressed;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                img,
                scale: 3.5,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(message ?? "New notification",
                    maxLines: 3,
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
              Spacer(),
              InkWell(
                onTap: onEdit,
                child: Icon(
                  Icons.edit,
                  size: 22,
                ),
              )
            ],
          ),
          const Divider(color: Colors.green),
        ],
      ),
    );
  }
}
