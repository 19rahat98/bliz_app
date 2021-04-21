class User {
  int id;
  String fullName;
  String email;
  String phone;
  String address;
  String image;
  String token;
  List<CompanyDetails> companyDetails;

  User(
      {this.id,
        this.fullName,
        this.email,
        this.phone,
        this.address,
        this.image,
        this.token,
        this.companyDetails});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    image = json['image'];
    token = json['token'];
    if (json['companyDetails'] != null) {
      companyDetails = new List<CompanyDetails>();
      json['companyDetails'].forEach((v) {
        companyDetails.add(new CompanyDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['image'] = this.image;
    data['token'] = this.token;
    if (this.companyDetails != null) {
      data['companyDetails'] =
          this.companyDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CompanyDetails {
  String companyName;
  int bin;

  CompanyDetails({this.companyName, this.bin});

  CompanyDetails.fromJson(Map<String, dynamic> json) {
    companyName = json['companyName'];
    bin = json['bin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyName'] = this.companyName;
    data['bin'] = this.bin;
    return data;
  }
}