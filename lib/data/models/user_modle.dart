class User {
  User(
      {this.id,
      this.firstname,
      this.lastname,
      required this.email,
      required this.role});

  String? id;
  String? firstname;
  String? lastname;
  final String email;
  final String role;

  @Deprecated("Use displayInfo instead")
  void displayInfo() {
    printInfo();
  }

  void printInfo() {
    firstname ??= "Aucun prénom connu";
    lastname ??= "Aucun nom de famille connu";
    List<dynamic> info = [id, firstname, lastname, email, role];
    for (final el in info) {
      print(el);
    }
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        email: json['email'],
        role: json['role']);
  }
}
