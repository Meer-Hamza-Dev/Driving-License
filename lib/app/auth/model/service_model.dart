class ServiceModel {
  int? id;
  String? name;
  String? nameAr;
  String? image;
  String? icon;
  String? description;
  String? descriptionAr;
  int? status;
  var createdBy;
  var deletedBy;
  var updatedBy;
  var deletedAt;
  String? createdAt;
  String? updatedAt;
  String? imagePath;
  String? iconPath;
  int? bookingsCount;
  List<SubServices>? subServices;

  ServiceModel(
      {this.id,
      this.name,
      this.nameAr,
      this.image,
      this.icon,
      this.description,
      this.descriptionAr,
      this.status,
      this.createdBy,
      this.deletedBy,
      this.updatedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.imagePath,
      this.iconPath,
      this.bookingsCount,
      this.subServices});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['name_ar'];
    image = json['image'];
    icon = json['icon'];
    description = json['description'];
    descriptionAr = json['description_ar'];
    status = json['status'];
    createdBy = json['created_by'];
    deletedBy = json['deleted_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imagePath = json['image_path'];
    iconPath = json['icon_path'];
    bookingsCount = json['bookings_count'];
    if (json['sub_services'] != null) {
      subServices = <SubServices>[];
      json['sub_services'].forEach((v) {
        subServices!.add(new SubServices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['image'] = this.image;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['description_ar'] = this.descriptionAr;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['deleted_by'] = this.deletedBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image_path'] = this.imagePath;
    data['icon_path'] = this.iconPath;
    data['bookings_count'] = this.bookingsCount;
    if (this.subServices != null) {
      data['sub_services'] = this.subServices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubServices {
  int? id;
  int? serviceId;
  String? name;
  String? nameAr;
  String? image;
  String? icon;
  String? description;
  String? descriptionAr;
  int? status;
  var createdBy;
  var deletedBy;
  var updatedBy;
  var deletedAt;
  String? createdAt;
  String? updatedAt;
  String? imagePath;
  String? iconPath;
  int? bookingsCount;

  SubServices(
      {this.id,
      this.serviceId,
      this.name,
      this.nameAr,
      this.image,
      this.icon,
      this.description,
      this.descriptionAr,
      this.status,
      this.createdBy,
      this.deletedBy,
      this.updatedBy,
      this.deletedAt,
      this.createdAt,
      this.updatedAt,
      this.imagePath,
      this.iconPath,
      this.bookingsCount});

  SubServices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    name = json['name'];
    nameAr = json['name_ar'];
    image = json['image'];
    icon = json['icon'];
    description = json['description'];
    descriptionAr = json['description_ar'];
    status = json['status'];
    createdBy = json['created_by'];
    deletedBy = json['deleted_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imagePath = json['image_path'];
    iconPath = json['icon_path'];
    bookingsCount = json['bookings_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_id'] = this.serviceId;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['image'] = this.image;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['description_ar'] = this.descriptionAr;
    data['status'] = this.status;
    data['created_by'] = this.createdBy;
    data['deleted_by'] = this.deletedBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image_path'] = this.imagePath;
    data['icon_path'] = this.iconPath;
    data['bookings_count'] = this.bookingsCount;
    return data;
  }
}
