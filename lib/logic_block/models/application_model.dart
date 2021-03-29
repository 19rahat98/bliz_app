class Application {
  int orderId;
  List<User> user;
  List<Details> details;
  String status;
  List<Executor> executor;
  Price price;

  Application({this.user, this.details, this.status, this.executor, this.price, this.orderId});

  Application.fromJson(Map<String, dynamic> json) {
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
    status = json['status'];
    orderId = json['order_id'];
    if (json['executor'] != null) {
      executor = new List<Executor>();
      json['executor'].forEach((v) {
        executor.add(new Executor.fromJson(v));
      });
    }
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.map((v) => v.toJson()).toList();
    }
    if (this.details != null) {
      data['details'] = this.details.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['order_id'] = this.orderId;
    if (this.executor != null) {
      data['executor'] = this.executor.map((v) => v.toJson()).toList();
    }
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    return data;
  }
}

class Executor {
  String fullName;
  String type;
  int id;

  Executor({this.fullName, this.type, this.id});

  Executor.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['type'] = this.type;
    data['id'] = this.id;
    return data;
  }
}

class User {
  String fullName;
  String type;
  int id;

  User({this.fullName, this.type, this.id});

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['type'] = this.type;
    data['id'] = this.id;
    return data;
  }
}

class Details {
  int id;
  String updatedAt;
  List<Info> info;

  Details({this.id, this.updatedAt, this.info});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    updatedAt = json['updated_at'];
    if (json['details'] != null) {
      info = new List<Info>();
      json['details'].forEach((v) {
        info.add(new Info.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['updated_at'] = this.updatedAt;
    if (this.info != null) {
      data['details'] = this.info.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  String startDate;
  String endDate;
  String from;
  String to;
  int volume;
  int net;
  String typeTransport;
  String title;
  String price;
  String fromString;
  String toCityString;
  String distance;
  String duration;

  Info(
      {this.startDate,
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
        this.duration});

  Info.fromJson(Map<String, dynamic> json) {
    startDate = json['start_date'];
    endDate = json['end_date'];
    from = json['from'];
    to = json['to'];
    volume = json['volume'];
    net = json['net'];
    typeTransport = json['type_transport'];
    title = json['title'];
    if(json['price'].runtimeType is String){
      price = json['price'];
    }
    fromString = json['from_string'];
    toCityString = json['to_string'];
    distance = json['distance'];
    duration = json['duration'];
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

class Price {
  int price;
  int currency;

  Price({this.price, this.currency});

  Price.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['currency'] = this.currency;
    return data;
  }
}