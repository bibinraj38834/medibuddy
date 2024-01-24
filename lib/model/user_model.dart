class UserModel {
  String? email;
  String? uid;
  String? firstName;
  String? secondName;
  String? phone;
  String? address;

  UserModel({
    this.uid,
    this.email,
    this.firstName,
    this.secondName,
    this.phone,
    this.address,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
      phone: map['phone'],
      address: map['address'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
      'phone': phone,
      'address': address,
    };
  }
}
