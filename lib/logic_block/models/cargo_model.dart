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
  List<User> user;
  List<Details> details;
  List<Additional> additional;
  List<Price> price;

  Data({this.id, this.user, this.details, this.additional, this.price});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['user'] != null) {
      user = new List<User>();
      json['user'].forEach((v) {
        user.add(new User.fromJson(v));
      });
    }
    if (json['details'] != null) {
      details = new List<Details>();
      json['details'].forEach((v) {
        details.add(new Details.fromJson(v));
      });
    }
    if (json['additional'] != null) {
      additional = new List<Additional>();
      json['additional'].forEach((v) {
        additional.add(new Additional.fromJson(v));
      });
    }
    if (json['price'] != null) {
      price = new List<Price>();
      json['price'].forEach((v) {
        price.add(new Price.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user.map((v) => v.toJson()).toList();
    }
    if (this.details != null) {
      data['details'] = this.details.map((v) => v.toJson()).toList();
    }
    if (this.additional != null) {
      data['additional'] = this.additional.map((v) => v.toJson()).toList();
    }
    if (this.price != null) {
      data['price'] = this.price.map((v) => v.toJson()).toList();
    }
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

class Details {
  String from;
  String to;
  dynamic distance;
  String startDate;
  String endDate;
  dynamic volume;
  int net;

  Details(
      {this.from,
        this.to,
        this.distance,
        this.startDate,
        this.endDate,
        this.volume,
        this.net});

  Details.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    distance = json['distance'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    volume = json['volume'];
    net = json['net'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['distance'] = this.distance;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['volume'] = this.volume;
    data['net'] = this.net;
    return data;
  }
}

class Additional {
  List<String> docs;

  Additional({this.docs});

  Additional.fromJson(Map<String, dynamic> json) {
    docs = json['docs'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docs'] = this.docs;
    return data;
  }
}

class Price {
  String price;
  String paymentType;

  Price({this.price, this.paymentType});

  Price.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    paymentType = json['payment_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['payment_type'] = this.paymentType;
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