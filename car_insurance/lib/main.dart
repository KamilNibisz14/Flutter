import 'package:car_insurance/MainPage/AddNewPolicy/new_policy_form.dart';
import 'package:car_insurance/MainPage/main_page.dart';
import 'package:car_insurance/MainPage/policyView/policy_view.dart';
import 'package:car_insurance/MainPage/searchPolicy/search_policy.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_data.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_user_data.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'LoginPage/login_page.dart';
import 'Providers/LoginProviders/user_check.dart';
import 'Providers/MainProviders/NewPolicyProviders/car_owner_data.dart';
import 'Providers/MainProviders/NewPolicyProviders/navigation_new_policy_form.dart';
import 'Providers/MainProviders/NewPolicyProviders/policy_duration_and_ID.dart';
import 'Providers/MainProviders/agent_data.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserCheck()),
            ChangeNotifierProvider(create: (_) => AgentData()),
            ChangeNotifierProvider(create: (_) => NavigationPolicyForm()),
            ChangeNotifierProvider(create: (_) => PolicyDurationAndPolicyID()),
            ChangeNotifierProvider(create: (_) => Owner()),
            ChangeNotifierProvider(create: (_) => User()),
            ChangeNotifierProvider(create: (_) => Car()),
          ],
          child: const StartPage()
  ));
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id ,
      routes: {
        LoginPage.id : (context) => const LoginPage(),
        MainPage.id : (context) => const MainPage(),
        SearchPage.id : (context) => const SearchPage(),
        PolicyView.id : (context) => const PolicyView(),
        NewPolicyForm.id : (context) => const NewPolicyForm(),
      },
    );
  }
}
