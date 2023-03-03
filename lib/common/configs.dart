class AppConfigs {
  static const String baseUrl =
      "https://5o53oluanh.execute-api.ap-south-1.amazonaws.com/development";
  static const String getPrivacyPolicy =
      "/privacyRouter/getallPrivacyByConductor";
  static const String getHelpAndSupport =
      "/helpAndSupportRouter/gethelpByConductor";
  static const String createRating = "/ratingRouter/createRating";
  static const String getNotifications =
      "/notificationRouter/getallusersByConductor";
  static const String getAdminWallet =
      "/walletRouter/getWallet/63cfba8bd5d7c443b45e69dc";
  static const String getAdminNotifications =
      "/notificationRouter/getallusersByAdmin";
  static const String sendNotification =
      "/notificationRouter/sendNotificationstouserByAdmin";
  static const String updateNotification =
      "/notificationRouter/updateNotificationByAdmin";
  static const String addHelp = "/helpAndSupportRouter/addhelpByAdmin";
  static const String deleteHelp =
      "/helpAndSupportRouter/DeletehelpByIdByAdmin";

  static const String getPassanger = "/api/GetPassengerInfoAdmin";

  static const String getAllBuses = "/FindBusRouter/getalllbusesofRequiredTime";
  static const String loginwithPass = "/api/Login";

  static const String booking = '/BookingRouter/bookingOfBus';
}
