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

  // Überprüfen ob der Benutzername korrekt ist
  bool checkUserName(String inputUserName) {
    String checkUserName = "Jürgen";
    bool result = false;
    if (checkUserName == inputUserName) {
      result = true;
    } else {
      // so könte man das hier auch machen } else if (checkUserName != inputUserName) {
      result = false;
    }
    return result;
  }

// Überprüfen ob das Passwort korrekt ist
  bool checkPassword(String inputPassword) {
    String checkPassword = "Passwort";
    bool result = false;
    if (checkPassword == inputPassword) {
      result = true;
    } else {
      result = false;
    }
    return result;
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
