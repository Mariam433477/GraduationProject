class user {
  String ?message;
  String ?fullname;
  String ?email;
  String ?phoneNumber;
  bool ?flag;

  user({this.message, this.fullname, this.email, this.phoneNumber, this.flag});

  user.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    fullname = json['fullname'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    flag = json['Flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['Flag'] = this.flag;
    return data;
  }
}
