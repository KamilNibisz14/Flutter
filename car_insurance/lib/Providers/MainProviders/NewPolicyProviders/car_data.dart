import 'package:flutter/material.dart';

enum FuealType{
  Petrol,
  Disel,
  Hibrid,
  LPG,
  electric
}

class Car with ChangeNotifier
{
  String _brand = '';
  String _model = '';
  String _countryOfRegistration = '';
  String _registrationNumber = '';
  String _vin = '';
  int _engineCapacity = 0;
  int _enginePower = 0;
  int _weight = 0;
  int _numberOfSeats = 0;
  late DateTime _productionDate;
  FuealType _fuealType = FuealType.Petrol;

  String get brand => _brand;
  String get model => _model;
  String get countryOfRegistration => _countryOfRegistration;
  String get registrationNumber => _registrationNumber;
  String get vin => _vin;
  int get engineCapacity => _engineCapacity;
  int get enginePower => _enginePower;
  int get weight => _weight;
  int get numberOfSeats => _numberOfSeats;
  DateTime get productionDate => _productionDate;
  FuealType get fuealType => _fuealType;

  void setBrand(String brand)
  {
    _brand = brand;
  }
  void setModel(String model)
  {
    _model = model;
  }
  void setCountryOfRegistration(String countryOfRegistration)
  {
    _countryOfRegistration = countryOfRegistration;
  }
  void setRegistrationNumber(String registrationNumber)
  {
    _registrationNumber = registrationNumber;
  }
  void setVin(String vin)
  {
    _vin = vin;
  }
  void setEngineCapacity(String engineCapacity)
  {
    _engineCapacity = int.parse(engineCapacity);
  }
  void setEnginePower(String enginePower)
  {
    _enginePower = int.parse(enginePower);
  }
  void setWeight(String weight)
  {
    _weight= int.parse(weight);
  }
  void setNumberOfSeats(String numberOfSeats)
  {
    _numberOfSeats = int.parse(numberOfSeats);
  }
  void setProductionDate(DateTime productionDate)
  {
    _productionDate = productionDate;
  }
  void setFuealType(FuealType fuealType)
  {
    _fuealType = fuealType;
  }



  void clearData()
  {
    _brand = '';
    _model = '';
    _countryOfRegistration = '';
    _registrationNumber = '';
    _vin = '';
    _engineCapacity = 0;
    _enginePower = 0;
    _weight = 0;
    _numberOfSeats = 0;
    _fuealType = FuealType.Petrol;
  }

}