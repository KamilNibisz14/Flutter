import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_data.dart';
import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_owner_data.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';

import '../../../Providers/MainProviders/NewPolicyProviders/navigation_new_policy_form.dart';
import '../CustomTextForm.dart';


class CarForm extends StatelessWidget {
  CarForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void IfFormIsCorrect()
    {
      if (_formKey.currentState!.validate()) {
        context.read<NavigationPolicyForm>().EnableToGoNextPage();
      }
      else {
        context.read<NavigationPolicyForm>().UnEnableToGoNextPage();
      }
    }
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Car', style: TextStyle(fontSize: 30),),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Brand*',
                    getData: (String arg){
                      context.read<Car>().setBrand(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                          (val){
                        if (val.toString().contains(new RegExp(r'[0-9]')))
                        {
                          return "field can't contain number";
                        }
                        return null;
                      }
                    ]),
                  ),
                  SizedBox(width: 30,),

                  CutomeTextForm(
                    label: 'Model*',
                    getData: (String arg){
                      context.read<Car>().setModel(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Countr of registration*',
                    getData: (String arg){
                      context.read<Car>().setCountryOfRegistration(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                      FormBuilderValidators.maxLength(3),
                          (val){
                        if (val.toString().contains(new RegExp(r'[0-9]')))
                        {
                          return "field can't contain number";
                        }
                        return null;
                      }
                    ]),
                  ),

                  SizedBox(width: 30,),
                  CutomeTextForm(
                    label: 'Registration number*',
                    getData: (String arg){
                      context.read<Car>().setRegistrationNumber(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.maxLength(7),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'VIN*',
                    getData: (String arg){
                      context.read<Car>().setVin(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.maxLength(17),
                      FormBuilderValidators.minLength(17),
                    ]),
                  ),
                  SizedBox(width: 30,),
                  CutomeTextForm(
                    label: 'Engine capacity*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Car>().setEngineCapacity(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.min(1),
                      FormBuilderValidators.maxLength(6),
                      FormBuilderValidators.numeric(),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Engine power*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Car>().setEnginePower(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.min(1),
                      FormBuilderValidators.maxLength(4),
                    ]),
                  ),
                  SizedBox(width: 30,),
                  CutomeTextForm(
                    label: 'Weight*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Car>().setWeight(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.maxLength(5),
                      FormBuilderValidators.min(1)
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Number Of seats*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Owner>().setPostal_number(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.maxLength(3),
                      FormBuilderValidators.numeric()
                    ]),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: width / 2 - 50,
                    child:InputDatePickerFormField(
                      initialDate: DateTime(2000,1,1),
                      lastDate: DateTime.now(),
                      firstDate: DateTime(1000),
                      onDateSubmitted: (DateTime a){
                        print(a);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
