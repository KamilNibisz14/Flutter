import 'package:flutter/material.dart';

class PolicyDurationAndPolicyID with ChangeNotifier
{
  late DateTime? _dateFrom;
  late DateTime? _dateUntil;
  late String _policyID = '90857000001';
  DateTime _dateOfConclusion = DateTime.now();
  DateTime get dateOfConclusion => _dateOfConclusion;
  String get policyID => _policyID;

  void setDateFrom(DateTime? date)
  {
    _dateFrom = date;
    notifyListeners();
  }
  void setDateUntil(DateTime? date)
  {
    _dateUntil = date;
    notifyListeners();
  }

}