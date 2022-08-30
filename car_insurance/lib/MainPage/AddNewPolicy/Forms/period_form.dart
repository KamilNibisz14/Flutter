import 'package:car_insurance/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

import '../../../Providers/MainProviders/NewPolicyProviders/navigation_new_policy_form.dart';
import '../../../Providers/MainProviders/NewPolicyProviders/policy_duration_and_ID.dart';

class PeriodFormWidget extends StatefulWidget {
  const PeriodFormWidget({Key? key}) : super(key: key);

  State<PeriodFormWidget> createState() => _PeriodFormWidgetState();
}

class _PeriodFormWidgetState extends State<PeriodFormWidget> {

  void _onSelectionChanged(DateTimeRange? args) {
    context.read<PolicyDurationAndPolicyID>().setDateFrom(args?.start);
    context.read<PolicyDurationAndPolicyID>().setDateUntil(args?.end);
    context.read<NavigationPolicyForm>().EnableToGoNextPage();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('${context.watch<PolicyDurationAndPolicyID>().policyID}', style: kBigTextPolicy.copyWith(fontSize: 24),),
                Text(DateFormat('dd-MM-yyyy').format(context.watch<PolicyDurationAndPolicyID>().dateOfConclusion).toString(), style: kBigTextPolicy,),
              ],
            ),
            SizedBox(height: 40),
            Text('Policy duration:', style: kBigTextPolicy),
            SizedBox(height: 20),
            FormBuilderDateRangePicker(
              name: 'date_range',
              firstDate: DateTime.now(),
              lastDate: DateTime(2040),
              initialEntryMode: DatePickerEntryMode.input,
              format: DateFormat('yyyy-MM-dd'),
              onChanged: _onSelectionChanged,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
              ),
            ),
          ],
        ),
      ),
    );
  }
}