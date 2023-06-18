// ignore_for_file: must_be_immutable

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:frontend/components/custom_button.dart';
import 'package:frontend/components/textfield.dart';
import 'package:frontend/constants/spaces.dart';
import '../../components/drop_down_menu.dart';
import '../../constants/colors.dart';

class AddSpace extends StatefulWidget {
  const AddSpace({super.key});

  @override
  State<AddSpace> createState() => _AddSpaceState();
}

List<String> spaceTypes = [
  'المساحة الأولى',
  'المساحة الثانية',
  'المساحة الثالثة',
  'المساحة الرابعة',
  'المساحة الخامسة',
  "المساحة السادسة"
];
List<String> selectedspaceTypes = [];
List<String> planTypes = ['بالساعات', 'بالأيام', 'بالأسابيع', 'بالشهر'];
List<String> selectedPlanTypes = [];

class _AddSpaceState extends State<AddSpace> {
  dynamic file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 71, horizontal: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextFieldCustom(label: 'إسم المساحة'),
                  kVSpace24,
                  DropDownMenuOwner(
                      label: 'المساحات',
                      hint: 'إختر نوع مساحات العمل التي تريد إضافتها',
                      typesAndPlans: spaceTypes,
                      selectedTypesAndPlans: selectedspaceTypes),
                  kVSpace24,
                  DropDownMenuOwner(
                      label: 'الخطط',
                      hint: 'إختر نوع الخطة التي تريد إضافتها',
                      typesAndPlans: planTypes,
                      selectedTypesAndPlans: selectedPlanTypes),
                  kVSpace24,
                  const TextFieldCustom(label: 'السعر'),
                  kVSpace24,
                  const TextFieldCustom(
                    suffixText: 'أو حدد المكان على الخريطة',
                    label: 'المكان',
                    icon: Icon(Icons.location_pin,
                        color: Color.fromRGBO(243, 17, 17, 1)),
                  ),
                  kVSpace24,
                  GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, crossAxisSpacing: 16.0),
                      children: const [
                        TextFieldCustom(label: 'الميزة الأولى', width: 153),
                        TextFieldCustom(label: 'الميزة الثانية', width: 153),
                        TextFieldCustom(label: 'الميزة الثالثة', width: 153),
                        TextFieldCustom(label: 'الميزة الرابعة', width: 153),
                        TextFieldCustom(label: 'الميزة الخامسة', width: 153),
                        TextFieldCustom(label: 'الميزة السادسة', width: 153),
                      ]),
                  Center(
                    child: DottedBorder(
                      dashPattern: const [5, 5],
                      color: darkGrey,
                      strokeCap: StrokeCap.round,
                      child: Container(
                        height: 150,
                        width: 188,
                        decoration: BoxDecoration(color: lightBlue),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.upload_file, color: darkBlue),
                              kVSpace8,
                              Text(
                                'صورة لمساحة العمل من الجهاز',
                                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: darkBlue),
                              ),
                              kVSpace8,
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: darkBlue),
                                  onPressed: () {},
                                  child: const CustomButton(
                                      buttonTitle: 'اختيار من الجهاز',
                                      textSize: 8))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  kVSpace40,
                  Center(
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: darkBlue),
                        onPressed: () {},
                        child: const CustomButton(
                            buttonTitle: 'اضافة', textSize: 8)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}