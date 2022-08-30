import 'package:car_insurance/MainPage/main_action_button.dart';
import 'package:car_insurance/MainPage/searchPolicy/search_policy.dart';
import 'package:car_insurance/Providers/MainProviders/agent_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class MainPage extends StatefulWidget {
  static const String id = 'mainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,
        actions: <Center>[
          Center(child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text('${context.watch<AgentData>().name} ${context.watch<AgentData>().surname}',
              style: TextStyle(fontSize: 17.0)),
          ))
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Image.asset('images/logo_car.png',),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Expanded(
                flex: 3,
                child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainActionButton(text: 'Add', icon: Icons.add, onTap: (){Navigator.pushNamed(context, 'policyForm');},),
                  SizedBox(width: 60),
                  MainActionButton(text: 'Search', icon: Icons.search, onTap: (){Navigator.pushNamed(context, SearchPage.id);},),
                ],
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
