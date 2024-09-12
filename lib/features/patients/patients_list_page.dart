import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter_app/base/components/gaps/gaps.dart';
import 'package:test_flutter_app/base/extension/extensions.dart';
import 'package:test_flutter_app/features/login/login_page.dart';
import 'package:test_flutter_app/features/patients/models/patient_model.dart';
import 'package:test_flutter_app/features/patients/repository/patient_list.dart';

class PatientsListPage extends StatelessWidget {
  const PatientsListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(
                      width: 127,
                      child: AppTextField(
                        prefixIcon: Icon(Icons.search),
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
            ...patientList.map((patientModel) => _PatientCard(patientModel: PatientModel.fromJson(patientModel)))
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
        padding: EdgeInsets.all(dMargin1),
        decoration: BoxDecoration(
          color: context.color.scaffoldBackground,
          borderRadius: BorderRadius.circular(dBorderRadius),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dMargin2),
              child: const Icon(Icons.person_rounded),
            ),
            Column(
              children: [
                Text(
                  patientModel.name ?? '',
                  style: context.text.titleLarge?.copyWith(decoration: TextDecoration.underline),
                ),
                VerticalGap(dMargin1),
                Container(
                  padding: EdgeInsets.all(dMargin1),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(dBorderRadius),
                  ),
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
                    ],
                  ),
                ),
                HorizontalGap(dMargin3),
              ],
            )
          ],
        ));
  }
}
