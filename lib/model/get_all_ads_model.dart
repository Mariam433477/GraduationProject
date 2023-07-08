class GetAllAdsModel {
  GetAllAdsModel({
      this.message, 
      this.flag, 
      this.ads,});

  GetAllAdsModel.fromJson(dynamic json) {
    message = json['Message'];
    flag = json['Flag'];
    if (json['ads'] != null) {
      ads = [];
      json['ads'].forEach((v) {
        ads?.add(Ads.fromJson(v));
      });
    }
  }
  String? message;
  bool? flag;
  List<Ads>? ads;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = message;
    map['Flag'] = flag;
    if (ads != null) {
      map['ads'] = ads?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Ads {
  Ads({
      this.id, 
      this.userId, 
      this.title, 
      this.spaceType, 
      this.description, 
      this.price, 
      this.city, 
      this.governorate, 
      this.lat, 
      this.lng, 
      this.gender, 
      this.features, 
      this.terms, 
      this.pricePer, 
      this.email, 
      this.phoneNumber, 
      this.images,});

  Ads.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    spaceType = json['space_type'];
    description = json['description'];
    price = json['price'];
    city = json['city'];
    governorate = json['governorate'];
    lat = json['lat'];
    lng = json['lng'];
    gender = json['gender'];
    features = json['features'] != null ? json['features'].cast<String>() : [];
    terms = json['terms'] != null ? json['terms'].cast<String>() : [];
    pricePer = json['price_per'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    if (json['images'] != null) {
      images = <ImagesModel>[];
      json['images'].forEach((v) {
        images?.add(ImagesModel.fromJson(v));
      });
    }
  }
  int? id;
  int? userId;
  String? title;
  String? spaceType;
  String? description;
  dynamic price;
  String? city;
  String? governorate;
  String? lat;
  String? lng;
  bool? gender;
  List<String>? features;
  List<String>? terms;
  String? pricePer;
  String? email;
  String? phoneNumber;
  List<ImagesModel>? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['title'] = title;
    map['space_type'] = spaceType;
    map['description'] = description;
    map['price'] = price;
    map['city'] = city;
    map['governorate'] = governorate;
    map['lat'] = lat;
    map['lng'] = lng;
    map['gender'] = gender;
    map['features'] = features;
    map['terms'] = terms;
    map['price_per'] = pricePer;
    map['email'] = email;
    map['phone_number'] = phoneNumber;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
class ImagesModel {
  String? url;
  String? description;

  ImagesModel({this.url, this.description});

  ImagesModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['description'] = this.description;
    return data;
  }
}