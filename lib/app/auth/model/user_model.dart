
class UserModelData {
  int? id;
  String? name;
  var email;
  var description;
  int? status;
  var createdBy;
  var deletedBy;
  int? updatedBy;
  var deletedAt;
  String? createdAt;
  String? updatedAt;
  String? image;
  String? phone;
  bool? isEmailVerify;
  bool? isPhoneVerify;
  var facebookId;
  var googleId;
  var linkedinId;
  var appleId;
  var fcmToken;
  var isCustomer;
  bool? isProvider;
  bool? isVendor;
  var gender;
  String? hourlyRate;
  var stripeCustomerId;
  bool? isEmployee;
  String? onlineStatus;
  int? safetyKitStatus;
  String? fullImagePath;

  UserModelData(
      {this.id,
        this.name,
        this.email,
        this.description,
        this.status,
        this.createdBy,
        this.deletedBy,
        this.updatedBy,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.image,
        this.phone,
        this.isEmailVerify,
        this.isPhoneVerify,
        this.facebookId,
        this.googleId,
        this.linkedinId,
        this.appleId,
        this.fcmToken,
        this.isCustomer,
        this.isProvider,
        this.isVendor,
        this.gender,
        this.hourlyRate,
        this.stripeCustomerId,
        this.isEmployee,
        this.onlineStatus,
        this.safetyKitStatus,
        this.fullImagePath});

  UserModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    description = json['description'];
    status = json['status'];
    createdBy = json['created_by'];
    deletedBy = json['deleted_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    phone = json['phone'];
    isEmailVerify = json['is_email_verify'];
    isPhoneVerify = json['is_phone_verify'];
    facebookId = json['facebook_id'];
    googleId = json['google_id'];
    linkedinId = json['linkedin_id'];
    appleId = json['apple_id'];
    fcmToken = json['fcm_token'];
    isCustomer = json['is_customer'];
    isProvider = json['is_provider'];
    isVendor = json['is_vendor'];
    gender = json['gender'];
    hourlyRate = json['hourly_rate'];
    stripeCustomerId = json['stripe_customer_id'];
    isEmployee = json['is_employee'];
    onlineStatus = json['online_status'];
    safetyKitStatus = json['safety_kit_status'];
    
    fullImagePath = json['full_image_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['description'] = this.description;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['deleted_by'] = this.deletedBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['phone'] = this.phone;
    data['is_email_verify'] = this.isEmailVerify;
    data['is_phone_verify'] = this.isPhoneVerify;
    data['facebook_id'] = this.facebookId;
    data['google_id'] = this.googleId;
    data['linkedin_id'] = this.linkedinId;
    data['apple_id'] = this.appleId;
    data['fcm_token'] = this.fcmToken;
    data['is_customer'] = this.isCustomer;
    data['is_provider'] = this.isProvider;
    data['is_vendor'] = this.isVendor;
    data['gender'] = this.gender;
    data['hourly_rate'] = this.hourlyRate;
    data['stripe_customer_id'] = this.stripeCustomerId;
    data['is_employee'] = this.isEmployee;
    data['online_status'] = this.onlineStatus;
    data['safety_kit_status'] = this.safetyKitStatus;
  
    data['full_image_path'] = this.fullImagePath;
    return data;
  }
}
