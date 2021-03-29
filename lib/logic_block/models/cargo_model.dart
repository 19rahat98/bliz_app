import 'dart:convert';

class Result {
  bool success;
  List<Data> data;
  Pagination pagination;

  Result({this.success, this.data, this.pagination});

  Result.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String updatedAt;
  List<Details> details;

  Data({this.id, this.updatedAt, this.details});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    if (json['details'] != null) {
      details = new List<Details>();
      json['details'].forEach((v) {
        details.add(new Details.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['updated_at'] = this.updatedAt;
    if (this.details != null) {
      data['details'] = this.details.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String startDate;
  String endDate;
  String from;
  String to;
  int volume;
  int net;
  String typeTransport;
  String title;
  dynamic price;
  String fromString;
  String toCityString;
  String distance;
  String duration;

  Details({
    this.startDate,
    this.endDate,
    this.from,
    this.to,
    this.volume,
    this.net,
    this.typeTransport,
    this.title,
    this.price,
    this.fromString,
    this.toCityString,
    this.distance,
    this.duration,
  });

  Details.fromJson(Map<String, dynamic> json) {
    startDate = json['start_date'];
    endDate = json['end_date'];
    from = json['from'];
    to = json['to'];
    volume = json['volume'];
    net = json['net'];
    typeTransport = json['type_transport'];
    title = json['title'];
    price = json['price'];
    fromString = json['from_string'];
    toCityString = json['to_string'];
    duration = json['duration'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['from'] = this.from;
    data['to'] = this.to;
    data['volume'] = this.volume;
    data['net'] = this.net;
    data['type_transport'] = this.typeTransport;
    data['title'] = this.title;
    data['price'] = this.price;
    data['from_string'] = this.fromString;
    data['to_string'] = this.toString;
    data['distance'] = this.distance;
    data['duration'] = this.duration;
    return data;
  }
}

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

class Additional {
  List docs;

  Additional({this.docs});

/*  Additional.fromJson(Map<String, dynamic> json) {
    docs = json['docs'].cast<String>();
  }*/

  Additional.fromJson(Map<String, dynamic> json) {
    docs = new List();
    json['docs'].forEach((value) {
      docs.add(value);
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docs'] = this.docs;
    return data;
  }
}

class Pagination {
  int total;
  int page;
  int maxPage;

  Pagination({this.total, this.page, this.maxPage});

  Pagination.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    page = json['page'];
    maxPage = json['max_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['page'] = this.page;
    data['max_page'] = this.maxPage;
    return data;
  }
}
