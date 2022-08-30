import 'package:flutter/material.dart';

import '../../constants.dart';

class PesonalData extends StatelessWidget {
  const PesonalData({required this.name, required this.surname, required this.pesel, required this.city, required this.street,required this.apartment});
  final String name;
  final String surname;
  final String pesel;
  final String city;
  final String street;
  final String apartment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Name:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(name,style: kSmallTextPolicy,),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Surname:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(surname,style: kSmallTextPolicy,),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Pesel:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(pesel,style: kSmallTextPolicy,),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('City:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(city,style: kSmallTextPolicy,),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Street:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(street,style: kSmallTextPolicy,),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Apartment:',style: kBigTextPolicy,),
                  SizedBox(width: 7,),
                  Text(apartment,style: kSmallTextPolicy,),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
