class CityListModel {
  bool? status;
  String? message;
  List<CityListData>? data;

  CityListModel({this.status, this.message, this.data});

  CityListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CityListData>[];
      json['data'].forEach((v) {
        data!.add(new CityListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CityListData {
  int? id;
  String? name;
  String? nameAr;
  var countryId;
  int? status;
  String? createdAt;
  String? updatedAt;
  var createdBy;
  var deletedBy;
  var updatedBy;
  var deletedAt;
  String? convenienceFee;
  String? tax;
  var serviceFee;

  CityListData(
      {this.id,
        this.name,
        this.nameAr,
        this.countryId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.createdBy,
        this.deletedBy,
        this.updatedBy,
        this.deletedAt,
        this.convenienceFee,
        this.tax,
        this.serviceFee});

  CityListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['name_ar'];
    countryId = json['country_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    deletedBy = json['deleted_by'];
    updatedBy = json['updated_by'];
    deletedAt = json['deleted_at'];
    convenienceFee = json['convenience_fee'];
    tax = json['tax'];
    serviceFee = json['service_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['country_id'] = this.countryId;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['created_by'] = this.createdBy;
    data['deleted_by'] = this.deletedBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_at'] = this.deletedAt;
    data['convenience_fee'] = this.convenienceFee;
    data['tax'] = this.tax;
    data['service_fee'] = this.serviceFee;
    return data;
  }
}
