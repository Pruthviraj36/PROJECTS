class Profile {
  final int? id;
  final String name;
  final String email;
  final String mobileNumber;
  final int age;
  final String location;
  final String gender;
  final List<String> hobbies;
  final String imagePath;
  final DateTime? dateOfBirth;
  final String password;

  Profile({
    this.id,
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.age,
    required this.location,
    required this.gender,
    required this.hobbies,
    required this.imagePath,
    this.dateOfBirth,
    required this.password
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'mobileNumber': mobileNumber,
      'age': age,
      'location': location,
      'gender': gender,
      'hobbies': hobbies.join(','), // Store as comma-separated
      'imagePath': imagePath,
      'password': password,
      'dateOfBirth': dateOfBirth?.toIso8601String(),
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      mobileNumber: map['mobileNumber'],
      age: map['age'],
      location: map['location'],
      gender: map['gender'],
      hobbies: (map['hobbies'] as String).split(','),
      imagePath: map['imagePath'],
      password: map['password'],
      dateOfBirth: map['dateOfBirth'] != null ? DateTime.parse(map['dateOfBirth']) : null,
    );
  }
}
