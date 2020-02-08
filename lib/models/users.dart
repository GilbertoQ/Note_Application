class User {
  final String id;
  final String fullName;
  final String email;
  final String userRole;

  //constructor
  User({this.id, this.fullName, this.email, this.userRole});


  //serilize data to json object
  User.fromData(Map<String, dynamic> data)
      : id = data['id'],
        fullName = data['fullName'],
        email = data['email'],
        userRole = data['userRole'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'email': email,
      'userRole': userRole,
    };
  }
}