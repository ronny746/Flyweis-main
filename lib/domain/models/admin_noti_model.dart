class AdminNotificationModel {
  String? message;
  List<Data>? data;

  AdminNotificationModel({this.message, this.data});

  AdminNotificationModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? message;
  int? iV;

  Data({this.sId, this.message, this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    message = json['message'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['message'] = this.message;
    data['__v'] = this.iV;
    return data;
  }
}
