import 'package:car_insurance/MainPage/policyView/personal_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/MainProviders/agent_data.dart';
import '../../constants.dart';

class PolicyView extends StatelessWidget {
  static const String id = 'policyView';
  const PolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        leading: GestureDetector(
        onTap: (){ Navigator.pop(context);},
            child: Icon(Icons.arrow_back)
        ),
        actions: <Center>[
          Center(child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('${context.watch<AgentData>().name} ${context.watch<AgentData>().surname}',
                style: TextStyle(fontSize: 17.0)),
          ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nr. 90857555555',style: kBigTextPolicy,),
                SizedBox(height: 5),
                Text('20-05-2022',style: kSmallTextPolicy,),
                SizedBox(height: 25),
                Text('Policy period',style: kBigTextPolicy,),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('From:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('20-05-2022',style: kSmallTextPolicy,),
                    SizedBox(width: 30,),
                    Text('Until:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('20-05-2023',style: kSmallTextPolicy,),
                  ],
                ),
                SizedBox(height: 25),
                Text('Owner',style: kBigTextPolicy,),
                SizedBox(height: 10),
                PesonalData(
                  name: 'Kamil',
                  surname: 'Nibisz',
                  pesel: '01241404598',
                  city: 'Katowice',
                  street: 'Sokolska',
                  apartment: '2/1',
                ),
                SizedBox(height: 25),
                Text('Beneficient ',style: kBigTextPolicy,),
                SizedBox(height: 10),
                PesonalData(
                  name: 'Kamil',
                  surname: 'Nibisz',
                  pesel: '01241404598',
                  city: 'Katowice',
                  street: 'Sokolska',
                  apartment: '2/1',
                ),
                SizedBox(height: 25),
                Text('Car ',style: kBigTextPolicy,),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Brand:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('Honda',style: kSmallTextPolicy,),
                    SizedBox(width: 30,),
                    Text('Model:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('Civic',style: kSmallTextPolicy,),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Registration number:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('SI80415',style: kSmallTextPolicy,),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Vin number:',style: kBigTextPolicy,),
                    SizedBox(width: 5,),
                    Text('V0154875632569874',style: kSmallTextPolicy,),
                  ],
                ),
                SizedBox(height: 25),
                Text('Instalments',style: kBigTextPolicy,),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('20-05-2022',style: kSmallTextPolicy,),
                        SizedBox(height: 5),
                        Text('973',style: kSmallTextPolicy,),
                      ],
                    ),
                    Column(
                      children: [
                        Text('20-05-2022',style: kSmallTextPolicy,),
                        SizedBox(height: 5),
                        Text('973',style: kSmallTextPolicy,),
                      ],
                    ),
                    Column(
                      children: [
                        Text('20-05-2022',style: kSmallTextPolicy,),
                        SizedBox(height: 5),
                        Text('973',style: kSmallTextPolicy,),
                      ],
                    ),
                    Column(
                      children: [
                        Text('20-05-2022',style: kSmallTextPolicy,),
                        SizedBox(height: 5),
                        Text('973',style: kSmallTextPolicy,),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
