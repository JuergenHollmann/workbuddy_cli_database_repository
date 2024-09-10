// contacts.dart
class Contacts {
  // Data required:
  String firstName;
  String lastName;
  String sex;
  int dayOfBirth;
  int monthOfBirth;
  int yearOfBirth;
  String tel1;
  String email1;

  // Data not required (but nice to have):
  // String tel2;
  // String email2;
  // String occupation;
  // String adress;
  // u.s.w. ...

  Contacts({
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.dayOfBirth,
    required this.monthOfBirth,
    required this.yearOfBirth,
    required this.tel1,
    required this.email1,
  });
}
