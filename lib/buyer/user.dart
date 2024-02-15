class User {
  String? userId;
  String? userEmail;
  String? userName;
  String? userPassword;
  String? userRegDate;

  User(
      {this.userId,
      this.userEmail,
      this.userName,
      this.userPassword,
      this.userRegDate});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    userEmail = json['userEmail'];
    userName = json['userName'];
    userPassword = json['userPassword'];
    userRegDate = json['userRegDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userid'] = userId;
    data['useremail'] = userEmail;
    data['username'] = userName;
    data['userpassword'] = userPassword;
    data['userdatereg'] = userRegDate;
    return data;
  }
}