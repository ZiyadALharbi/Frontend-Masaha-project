// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';

import 'package:frontend/views/owner/home_screen.dart';
// import 'package:frontend/views/onboard/onboard.dart';
import '../../components/All/custom_button.dart';
import '../../components/All/textfield.dart';
import '../../constants/spaces.dart';
import '../../components/All/drop_down_menu.dart';
import '../../constants/colors.dart';
import '../../services/api/owner/add_product_api.dart';
// import 'bottom_bar.dart';

class AddSpace extends StatefulWidget {
  const AddSpace({super.key});

  @override
  State<AddSpace> createState() => _AddSpaceState();
}

List availableSpace = [];
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
List spaceType = ['Meeting room'];
List planType = ['tyu'];
TextEditingController nameOfSpace = TextEditingController();
TextEditingController description = TextEditingController();
TextEditingController price = TextEditingController();
TextEditingController place = TextEditingController();
TextEditingController feature1 = TextEditingController();
TextEditingController feature2 = TextEditingController();
TextEditingController feature3 = TextEditingController();
TextEditingController feature4 = TextEditingController();
TextEditingController feature5 = TextEditingController();
TextEditingController feature6 = TextEditingController();

class _AddSpaceState extends State<AddSpace> {
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
                  Text('لإضافة مساحات العمل',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: darkBlue)),
                  kVSpace32,
                  DropDownMenuOwner(
                      onTypeChange: (newValue) {
                        spaceType = newValue;
                        setState(() {});
                      },
                      label: 'المساحات',
                      hint: 'إختر نوع مساحات العمل التي تريد إضافتها',
                      typesAndPlans: spaceTypes,
                      selectedTypesAndPlans: selectedspaceTypes),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'وصف عن المساحة', textController: description),
                  kVSpace24,
                  TextFieldCustom(label: 'السعر', textController: price),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'إسم المساحة', textController: nameOfSpace),
                  kVSpace24,
                  DropDownMenuOwner(
                    label: 'الخطط',
                    hint: 'إختر نوع الخطة التي تريد إضافتها',
                    typesAndPlans: planTypes,
                    selectedTypesAndPlans: selectedPlanTypes,
                    onTypeChange: (newValue) {
                      planType = newValue;
                      setState(() {});
                    },
                  ),
                  kVSpace24,
                  GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, crossAxisSpacing: 16.0),
                      children: [
                        TextFieldCustom(
                            label: 'الميزة الأولى',
                            width: 153,
                            textController: feature1),
                        TextFieldCustom(
                            label: 'الميزة الثانية',
                            width: 153,
                            textController: feature2),
                        TextFieldCustom(
                            label: 'الميزة الثالثة',
                            width: 153,
                            textController: feature3),
                        TextFieldCustom(
                            label: 'الميزة الرابعة',
                            width: 153,
                            textController: feature4),
                        TextFieldCustom(
                            label: 'الميزة الخامسة',
                            width: 153,
                            textController: feature5),
                        TextFieldCustom(
                            label: 'الميزة السادسة',
                            width: 153,
                            textController: feature6),
                      ]),
                  TextFieldCustom(
                    textController: place,
                    suffixText: 'أو حدد المكان على الخريطة',
                    label: 'المكان',
                    icon: const Icon(Icons.location_pin,
                        color: Color.fromRGBO(243, 17, 17, 1)),
                  ),
                  // Center(
                  //   child: DottedBorder(
                  //     dashPattern: const [5, 5],
                  //     color: darkGrey,
                  //     strokeCap: StrokeCap.round,
                  //     child: Container(
                  //       height: 150,
                  //       width: 188,
                  //       decoration: BoxDecoration(color: lightBlue),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(16.0),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Icon(Icons.upload_file, color: darkBlue),
                  //             kVSpace8,
                  //             Text(
                  //               'صورة لمساحة العمل من الجهاز',
                  //               style: TextStyle(
                  //                   fontFamily: 'Tajawal',
                  //                   fontWeight: FontWeight.w400,
                  //                   fontSize: 12,
                  //                   color: darkBlue),
                  //             ),
                  //             kVSpace8,
                  //             ElevatedButton(
                  //                 style: ElevatedButton.styleFrom(
                  //                     backgroundColor: darkBlue),
                  //                 onPressed: () {},
                  //                 child: const CustomButton(
                  //                     buttonTitle: 'اختيار من الجهاز',
                  //                     textSize: 8,
                  //                     fontWeight: FontWeight.w400))
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  kVSpace40,
                  Center(
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: darkBlue),
                        onPressed: () async {
                          final Map body = {
                            "name": nameOfSpace.text,
                            "type": spaceType[0],
                            "description": nameOfSpace.text,
                            "price": double.parse(price.text),
                            "plan_type": planType[0],
                            "feature_1": feature1.text,
                            "feature_2": feature2.text,
                            "feature_3": feature3.text,
                            "feature_4": feature4.text,
                            "feature_5": feature5.text,
                            "feature_6": feature6.text,
                          };
                          final response = await addProductOwner(body: body);
                          if (response.statusCode == 200) {
                            context.nextPage(view: const HomeScreen());
                            setState(() {});
                          }
                        },
                        child: const CustomButton(
                            buttonTitle: 'اضافة',
                            textSize: 8,
                            fontWeight: FontWeight.w400)),
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
