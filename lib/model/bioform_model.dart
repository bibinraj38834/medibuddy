class BioModel {
  String? email;
  String? bid;
  String? name;
  String? gender;
  String? phone;
  String? address;
  String? age;
  String? dob;
  String? father;
  String? blood;
  String? height;
  String? weight;
  String? disease;
  String? allergy;
  String? remarks;

  BioModel({
    this.bid,
    this.email,
    this.name,
    this.gender,
    this.phone,
    this.address,
    this.age,
    this.dob,
    this.father,
    this.blood,
    this.height,
    this.weight,
    this.allergy,
    this.disease,
    this.remarks,
  });

  factory BioModel.fromMap(map) {
    return BioModel(
      bid: map['bid'],
      email: map['email'],
      name: map['name'],
      gender: map['gender'],
      phone: map['phone'],
      address: map['address'],
      age: map['age'],
      dob: map['dob'],
      father: map['father'],
      blood: map['blood'],
      height: map['height'],
      weight: map['weight'],
      allergy: map['allergy'],
      disease: map['disease'],
      remarks: map['remarks'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'bid': bid,
      'email': email,
      'name': name,
      'gender': gender,
      'phone': phone,
      'address': address,
      'age': age,
      'dob': dob,
      'father': father,
      'blood': blood,
      'height': height,
      'weight': weight,
      'allergy': allergy,
      'disease': disease,
      'remarks': remarks,
    };
  }
}
