import 'package:car_insurance/MainPage/AddNewPolicy/Forms/period_form.dart';
import 'package:car_insurance/MainPage/AddNewPolicy/Forms/user_form.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_data.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_owner_data.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_user_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/MainProviders/NewPolicyProviders/navigation_new_policy_form.dart';
import '../../Providers/MainProviders/agent_data.dart';
import '../../constants.dart';
import 'Forms/car_form.dart';
import 'Forms/owner_form.dart';
import 'navigation_button.dart';

class NewPolicyForm extends StatefulWidget {
  static const String id = 'policyForm';
  const NewPolicyForm({Key? key}) : super(key: key);

  @override
  State<NewPolicyForm> createState() => _NewPolicyFormState();
}

class _NewPolicyFormState extends State<NewPolicyForm> {

  List<Widget> _widgetOptions = <Widget>[
    PeriodFormWidget(),
    OwnerForm(),
    UserForm(),
    CarForm(),
    Text(
      'Policy data',
      style: kNavigationTextStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    bool CanGoNext = context.watch<NavigationPolicyForm>().CanGoNext;

    void ClearDataIfUserGoBack()
    {
      if(context.read<NavigationPolicyForm>().selectedIndex == 1 || context.read<NavigationPolicyForm>().selectedIndex == 2) {
        context.read<Owner>().clearData();
      }
      if(context.read<NavigationPolicyForm>().selectedIndex == 2 || context.read<NavigationPolicyForm>().selectedIndex == 3) {
        context.read<User>().clearData();
      }
      if(context.read<NavigationPolicyForm>().selectedIndex == 3 || context.read<NavigationPolicyForm>().selectedIndex == 4) {
        context.read<Car>().clearData();
      }
    }
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
      body: Container(
        child: Column(
          children: [
            Expanded( flex: 7, child: _widgetOptions.elementAt(context.watch<NavigationPolicyForm>().selectedIndex)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                      child: NavigationButton(text: 'Back',iconData: Icons.arrow_back,color: context.watch<NavigationPolicyForm>().selectedIndex == 0 ? Colors.grey.shade600  :Colors.blueAccent,isForward: false),
                    onTap:(){
                        ClearDataIfUserGoBack();
                        context.read<NavigationPolicyForm>().ItemDecrase();
                      }
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                      child: NavigationButton(text: 'Next',iconData: Icons.arrow_forward, color: CanGoNext == true ? Colors.blueAccent : Colors.grey.shade600, isForward: true),
                      onTap:(){
                        if(CanGoNext == true) {
                          context.read<NavigationPolicyForm>().ItemIncrase();
                        }
                      }
                  ),
                  SizedBox(width: 20)
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Period',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Owner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Car',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: 'Policy data',
          ),
        ],
        currentIndex: context.watch<NavigationPolicyForm>().selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.transparent,
      ),
    );
  }
}
