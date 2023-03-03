import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';
import 'package:my_bus_user_panel/controllers/profile_controller.dart';

enum MessageType { all, unread }

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  MessageType? selectedMessage = MessageType.all;

  final ProfileController profileController = Get.put(ProfileController());

  _load() async {
    await profileController.getNotifications();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load();
    });
    return Scaffold(
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
                      GetBuilder<ProfileController>(builder: (controller) {
                        return Text(
                          "Notification (${controller.notificationList.length})",
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
                  child: GetBuilder<ProfileController>(builder: (controller) {
                if (controller.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                    itemCount: controller.notificationList.length,
                    itemBuilder: (context, index) {
                      return NotificationWidget(
                        img: "assets/images/schedule.png",
                        message: controller.notificationList[index],
                        onPressed: () {
                          // function goes here.
                        },
                      );
                    });
              }))
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    required this.message,
    this.onPressed,
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  final String? message;
  final VoidCallback? onPressed;

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
            ],
          ),
          const Divider(color: Colors.green),
        ],
      ),
    );
  }
}
