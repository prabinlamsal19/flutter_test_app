import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_flutter_app/base/components/gaps/gaps.dart';
import 'package:test_flutter_app/base/extension/extensions.dart';
import 'package:test_flutter_app/features/login/login_page.dart';
import 'package:test_flutter_app/features/patients/models/patient_model.dart';
import 'package:test_flutter_app/features/patients/repository/patient_list.dart';

class PatientsListPage extends HookWidget {
  const PatientsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myPatientsList = useState<List>(patientList);

    return Scaffold(
      backgroundColor: context.color.elevatedBackground,
      body: Padding(
        padding: EdgeInsets.all(dMargin1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Patient List',
              style: context.text.headlineLarge,
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                      width: 127,
                      child: AppTextField(
                        onChanged: (currentVal) {
                          myPatientsList.value = patientList.where((patientJson) {
                            final patientName = patientJson["name"] as String;
                            return patientName.contains(currentVal);
                          }).toList();
                        },
                        prefixIcon: const Icon(Icons.search),
                      )),
                  HorizontalGap(dMargin2),
                  const SizedBox(
                    width: 96,
                    child: DropdownMenu(hintText: 'Sory By: ', dropdownMenuEntries: [
                      DropdownMenuEntry(value: '1', label: 'Name'),
                      DropdownMenuEntry(value: '2', label: 'Bed Number'),
                    ]),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: context.color.primary,
                        borderRadius: BorderRadius.circular(dBorderRadius),
                      ),
                      padding: EdgeInsets.symmetric(vertical: dMargin05, horizontal: dMargin2),
                      child: Text(
                        ' + Add Patient',
                        style: context.text.titleSmall,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...myPatientsList.value.map(
                      (patientModel) => _PatientCard(patientModel: PatientModel.fromJson(patientModel)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PatientCard extends StatelessWidget {
  const _PatientCard({super.key, required this.patientModel});
  final PatientModel patientModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(dMargin2),
        padding: EdgeInsets.all(dMargin1),
        decoration: BoxDecoration(
          color: context.color.scaffoldBackground,
          borderRadius: BorderRadius.circular(dBorderRadius),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dMargin2),
              child: Image.asset('assets/man_png.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  patientModel.name ?? '',
                  style: context.text.titleLarge?.copyWith(decoration: TextDecoration.underline),
                ),
                VerticalGap(dMargin1),
                Container(
                  padding: EdgeInsets.all(dMargin1),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Bed Number',
                            style: context.text.titleSmall,
                          ),
                          Text('#${patientModel.bedNumber}'),
                        ],
                      ),
                      HorizontalGap(dMargin2),
                      Column(
                        children: [
                          Text(
                            'Ward Number',
                            style: context.text.titleSmall,
                          ),
                          Text(patientModel.wardNumber.toString()),
                        ],
                      ),
                      HorizontalGap(dMargin3),
                      _ColoredInfoBox(color: context.color.green, text: '${patientModel.oxygenPercent} %'),
                      HorizontalGap(dMargin2),
                      _ColoredInfoBox(
                          color: context.color.red,
                          text: '${patientModel.bloodPressureSystolic}/${patientModel.bloodPressureDiastolic}'),
                      HorizontalGap(dMargin2),
                      _ColoredInfoBox(color: context.color.yellow, text: '${patientModel.heartRate} bpm'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class _ColoredInfoBox extends StatelessWidget {
  const _ColoredInfoBox({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(dMargin1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(dBorderRadius),
          border: Border.all(width: dMargin05, color: color),
          color: color.withOpacity(0.51)),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
