class User {
  String id;
  String name;
  String email;
  bool isAdmin; 

  User({
    required this.id,
    required this.name,
    required this.email,
    this.isAdmin = false, // Set default value to false
  });

  // Factory constructor to create a User object from a map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      isAdmin: map['is_admin'] ?? false, // Assign value from map or default to false
    );
  }

  // Convert User object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'is_admin': isAdmin, // Include isAdmin property in the map
    };
  }
}
