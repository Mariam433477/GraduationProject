class CreateAdsModel {
  CreateAdsModel({
      this.title, 
      this.spaceType, 
      this.description, 
      this.price, 
      this.city, 
      this.governorate, 
      this.gender, 
      this.features, 
      this.pricePer, 
      this.phoneNumber, 
      this.imagesDescription, 
      this.email, 
      this.lat, 
      this.lng, 
      this.terms, 
      this.images,
    this.date,
  });

  CreateAdsModel.fromJson(dynamic json) {
    title = json['title'];
    spaceType = json['space_type'];
    description = json['description'];
    price = json['price'];
    city = json['city'];
    governorate = json['governorate'];
    gender = json['gender'];
    features = json['features'];
    pricePer = json['price_per'];
    phoneNumber = json['phone_number'];
    imagesDescription = json['images_description'];
    email = json['email'];
    lat = json['lat'];
    lng = json['lng'];
    terms = json['terms'];
    images = json['images'];
    date = json['creation_date'];
  }
  String? title;
  String? spaceType;
  String? description;
  String? price;
  String? city;
  String? governorate;
  String? gender;
  String? features;
  String? pricePer;
  String? phoneNumber;
  String? imagesDescription;
  String? email;
  String? lat;
  String? lng;
  String? terms;
  String? images;
  String? date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['space_type'] = spaceType;
    map['description'] = description;
    map['price'] = price;
    map['city'] = city;
    map['governorate'] = governorate;
    map['gender'] = gender;
    map['features'] = features;
    map['price_per'] = pricePer;
    map['phone_number'] = phoneNumber;
    map['images_description'] = imagesDescription;
    map['email'] = email;
    map['lat'] = lat;
    map['lng'] = lng;
    map['terms'] = terms;
    map['images'] = images;
    map['creation_date']=date;
    return map;
  }

}