
class NGO{
   String _name;
   String _location;
   String _phone;
   String _email;

  NGO(this._name, this._location, this._phone, this._email);

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get location => _location;

  set location(String value) {
    _location = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
