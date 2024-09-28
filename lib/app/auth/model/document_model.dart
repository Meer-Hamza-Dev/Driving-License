class DocumentModel {
  int? id;
  int? customerId;
  var documentTypeId;
  String? documentLink;
  String? createdAt;
  String? updatedAt;
  var deletedAt;
  int? createdBy;
  int? updatedBy;
  var deletedBy;

  DocumentModel({
    this.id,
    this.customerId,
    this.documentTypeId,
    this.documentLink,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
  });

  DocumentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    customerId = json['customer_id'];
    documentTypeId = json['document_type_id'];
    documentLink = json['document_link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedBy = json['deleted_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer_id'] = this.customerId;
    data['document_type_id'] = this.documentTypeId;
    data['document_link'] = this.documentLink;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_by'] = this.deletedBy;
    return data;
  }
}
