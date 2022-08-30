import 'package:car_insurance/Providers/MainProviders/NewPolicyProviders/car_owner_data.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';

import '../../../Providers/MainProviders/NewPolicyProviders/navigation_new_policy_form.dart';
import '../CustomTextForm.dart';


class OwnerForm extends StatelessWidget {
  OwnerForm({Key? key}) : super(key: key);
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
              Text('Owner', style: TextStyle(fontSize: 30),),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Name*',
                    getData: (String arg){
                      context.read<Owner>().setName(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(2),
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
                    label: 'Middle name',
                    getData: (String arg){
                      context.read<Owner>().setMiddle_name(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                          (val){
                        if (val.toString().contains(new RegExp(r'[0-9]')))
                        {
                          return "field can't contain number";
                        }
                        return null;
                      }
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'Surname*',
                    getData: (String arg){
                      context.read<Owner>().setSurname(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(2),
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
                    label: 'Pesel*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Owner>().setPesel(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(errorText: 'Pesel contains only number'),
                      FormBuilderValidators.maxLength(11),
                      FormBuilderValidators.minLength(11),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'City*',
                    getData: (String arg){
                      context.read<Owner>().setCity(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(2),
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
                    label: 'Street*',
                    getData: (String arg){
                      context.read<Owner>().setStreet(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(2),
                          (val){
                        if (val.toString().contains(new RegExp(r'[0-9]')))
                        {
                          return "field can't contain number";
                        }
                        return null;
                      }
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  CutomeTextForm(
                    label: 'House Number*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Owner>().setHouse_Number(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.min(1)
                    ]),
                  ),
                  SizedBox(width: 30,),
                  CutomeTextForm(
                    label: 'Apartmant Number*',
                    keyboardtype: TextInputType.number,
                    getData: (String arg){
                      context.read<Owner>().setApartment_Number(arg);
                      IfFormIsCorrect();
                    },
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.min(1)
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              CutomeTextForm(
                label: 'Postal Address*',
                keyboardtype: TextInputType.number,
                getData: (String arg){
                  context.read<Owner>().setPostal_number(arg);
                  IfFormIsCorrect();
                },
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.maxLength(6),
                  FormBuilderValidators.minLength(6),
                      (val){
                    if (!val.toString().contains(new RegExp(r'[0-9]'))) {
                      return "Invalid Postal Address";
                    }
                    if(val.toString().length >2) {
                      if (val.toString()[2] != '-'){
                        return "Invalid Postal Address";
                      }
                    }
                    return null;
                  }
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}