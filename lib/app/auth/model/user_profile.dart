import 'package:driving_license/app/auth/model/user_model.dart';

class UserProfileData {
  bool? status;
  String? message;
  UserModelData? data;

  UserProfileData({this.status, this.message, this.data});

  UserProfileData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new UserModelData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

