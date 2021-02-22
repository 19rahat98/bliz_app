class CityData {
  int id;
  int countryId;
  String name;
  String latitude;
  String longitude;
  String createdAt;
  String updatedAt;

  CityData(
      {this.id,
        this.countryId,
        this.name,
        this.latitude,
        this.longitude,
        this.createdAt,
        this.updatedAt});

  CityData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['country_id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country_id'] = this.countryId;
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}