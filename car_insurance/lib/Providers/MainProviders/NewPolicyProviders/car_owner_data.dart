import 'package:flutter/material.dart';

class Owner with ChangeNotifier
{
  String _name = '';
  String _surname =  '';
  String? _middle_name = '';
  String _pesel = '';
  String _city = '';
  String _street = '';
  int _house_number = 0;
  int _apartment_number = 0;
  String _postal_number = '';

  String get name => _name;
  String get surname => _surname;
  String? get middle_name => _middle_name;
  String get pesel => _pesel;
  String get city => _city;
  String get street => _street;
  int get house_number => _house_number = 0;
  int get apartment_number => _apartment_number = 0;
  String get postal_number => _postal_number;


  void setName(String name)
  {
    _name = name;
    notifyListeners();
  }
  void setSurname(String surname)
  {
    _surname = surname;
    notifyListeners();
  }
  void setMiddle_name(String middleName)
  {
    _middle_name = middleName;
    notifyListeners();
  }
  void setPesel(String pesel)
  {
    _pesel = pesel;
    notifyListeners();
  }
  void setCity(String city)
  {
    _city = city;
    notifyListeners();
  }
  void setStreet(String street)
  {
    _street = street;
    notifyListeners();
  }
  void setHouse_Number(String houseNumber)
  {
    _house_number = int.parse(houseNumber);
    notifyListeners();
  }
  void setApartment_Number(String apartmentNumber)
  {
    _apartment_number = int.parse(apartmentNumber);
    notifyListeners();
  }
  void setPostal_number(String postalNumber)
  {
    _postal_number = postalNumber;
    notifyListeners();
  }
  void clearData()
  {
    _name = '';
    _surname =  '';
    _middle_name = '';
    _pesel = '';
    _city = '';
    _street = '';
    _house_number = 0;
    _apartment_number = 0;
    _postal_number = '';
    notifyListeners();
  }
}