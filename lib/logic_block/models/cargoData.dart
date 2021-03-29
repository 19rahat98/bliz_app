class CargoData {
  int id;
  List<User> user;
  List<Details> details;
  List<Additional> additional;
  List<Price> price;
  String updatedAt;
  bool isFavorite;

  CargoData({
    this.id,
    this.user,
    this.details,
    this.additional,
    this.price,
    this.updatedAt,
    this.isFavorite,
  });

  CargoData.fromJson(Map<String, dynamic> json) {
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
        try {
          additional.add(new Additional.fromJson(v));
        } catch (e) {
          print(e);
        }
      });
    }
    if (json['price'] != null) {
      price = new List<Price>();
      json['price'].forEach((v) {
        price.add(new Price.fromJson(v));
      });
    }
    updatedAt = json['updated_at'];
    isFavorite = json['is_favorite'];
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
    data['updated_at'] = this.updatedAt;
    data['is_favorite'] = this.isFavorite;
    return data;
  }
}

class User {
  int id;
  String fullName;
  String email;
  String phone;
  String countryName;
  int countryId;
  String shortCode;
  String city;
  String cityString;
  Null address;

  User(
      {this.id,
      this.fullName,
      this.email,
      this.phone,
      this.countryName,
      this.countryId,
      this.shortCode,
      this.city,
      this.cityString,
      this.address});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    phone = json['phone'];
    countryName = json['country_name'];
    countryId = json['country_id'];
    shortCode = json['short_code'];
    city = json['city'];
    cityString = json['city_string'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['country_name'] = this.countryName;
    data['country_id'] = this.countryId;
    data['short_code'] = this.shortCode;
    data['city'] = this.city;
    data['city_string'] = this.cityString;
    data['address'] = this.address;
    return data;
  }
}

class Details {
  String from;
  String to;
  String startDate;
  String endDate;
  int volume;
  int net;
  String distance;
  String duration;
  String fromString;
  String toCityString;
  String title;

  Details(
      {this.from,
      this.to,
      this.startDate,
      this.endDate,
      this.volume,
      this.net,
      this.distance,
      this.duration,
      this.fromString,
      this.toCityString,
      this.title});

  Details.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    volume = json['volume'];
    net = json['net'];
    distance = json['distance'];
    duration = json['duration'];
    fromString = json['from_string'];
    toCityString = json['to_string'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['volume'] = this.volume;
    data['net'] = this.net;
    data['distance'] = this.distance;
    data['duration'] = this.duration;
    data['from_string'] = this.fromString;
    data['to_string'] = this.toString;
    data['title'] = this.title;
    return data;
  }
}

class Additional {
  List<String> docs;
  List<String> loading;
  List<String> addition;

  Additional({this.docs, this.loading, this.addition});

  Additional.fromJson(Map<String, dynamic> json) {
    docs = json['docs'].cast<String>();
    if (json['loading'] != null) {
      loading = json['loading'].cast<String>();
    }
    if (json['addition'] != null) {
      addition = json['addition'].cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['docs'] = this.docs;
    data['loading'] = this.loading;
    data['addition'] = this.addition;
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
