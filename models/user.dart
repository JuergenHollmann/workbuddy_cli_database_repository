// user.dart
class User {
  String userName;
  String password;

  User({required this.userName, required this.password});

  @override
  String toString() {
    return "($userName $password)";
  }

  // Einen User erstellen
  void createUser(String userName, String password) {
    // code
  }

  // Einen User aufrufen
  void getUser(String userName, String password) {
    // print("Benutzername: $userName Passwort: $password");
  }

  // Die Daten eines Users ändern
  void updateUser(String userName, String password) {
    // code
  }

  // einen User löschen
  void deleteUser(String userName, String password) {
    // code
  }
}
