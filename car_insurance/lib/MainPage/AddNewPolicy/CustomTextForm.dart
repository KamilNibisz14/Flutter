import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CutomeTextForm extends StatelessWidget {
  var getData;
  var validator;
  CutomeTextForm({required this.label, this.keyboardtype, required this.getData, this.validator});
  String label;
  TextInputType? keyboardtype = TextInputType.text;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width / 2 - 50,
      child: TextFormField(
          keyboardType: keyboardtype,
          onChanged: (value) {
            getData(value);
          },
          decoration: InputDecoration(
            labelText: label,
          ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
      ),
    );
  }
}
