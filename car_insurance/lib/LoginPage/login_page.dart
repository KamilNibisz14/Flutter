import 'package:car_insurance/LoginPage/login_button.dart';
import 'package:car_insurance/MainPage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';

import '../Providers/LoginProviders/user_check.dart';
import '../Providers/MainProviders/agent_data.dart';
import '../constants.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const id = 'login';
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Hero(
                        tag: 'logo',
                        child: Container(
                          height: 40,
                          child: Image.asset('images/logo_car.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 22.0,),
                    Container(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 35.0,
                          color: Colors.black,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText('Car Insurance'),
                          ],
                          isRepeatingAnimation: false,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 35),
              Form(
                key: _formKey,
                child:Column(
                  children: [
                    TextFormField(
                      textAlign: TextAlign.center,
                      decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email', prefixIcon: Icon(Icons.person)),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(errorText: 'Email invalid'),
                      ]),
                      onChanged: (value){
                        _email = value;
                      },
                    ),
                    SizedBox(height: 35),
                    TextFormField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password', prefixIcon:  Icon(Icons.key)),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      onChanged: (value){
                        _password = value;
                      },
                    ),
                    SizedBox(height: 40.0,),
                  ],
                )
              ),
              LoginButton(onPressed: (){
              if (_formKey.currentState!.validate()) {
                context.read<UserCheck>().setEmail(_email);
                context.read<UserCheck>().setPassword(_password);
                context.read<AgentData>().setEmail(_email);
                Navigator.pushNamed(context, MainPage.id);
              }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
