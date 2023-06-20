// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';
import '../../components/auth/popup_message.dart';
import '../../services/api/auth/create_user.dart';
import '../../services/extensions/nav.dart';
import '../../components/auth/radio_button.dart';
import '../../components/All/custom_button.dart';
import '../../components/All/text_button.dart';
import '../../components/All/textfield.dart';
import '../../components/All/title_page.dart';
import '../../constants/colors.dart';
import 'log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? userType = "customer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitlePage(title: 'حساب جديد'),
                  TextButtonQuestion(
                    question: 'لديك حساب؟',
                    login: 'تسجيل الدخول',
                    page: const LogIn(),
                  ),
                  TextFieldCustom(
                    label: 'الإسم',
                    textController: nameController,
                  ),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'رقم الجوال', textController: phoneController),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'البريد الالكتروني',
                      textController: emailController),
                  kVSpace24,
                  RadioButton(
                    onTypeChange: (newValue) {
                      userType = newValue;
                      setState(() {});
                    },
                  ),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'كلمة المرور', textController: passwordController),
                  kVSpace32,
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 105, vertical: 16),
                            backgroundColor: darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          final response = await createUser(
                            body: {
                              "email": emailController.text,
                              "password": passwordController.text,
                              "name": nameController.text,
                              "username": nameController.text,
                              "phone": phoneController.text
                            },
                            userType: userType,
                          );

                          if (response.statusCode == 200) {
                            context.nextPage(view: const LogIn());
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpMessage(),
                            );
                          }
                        },
                        child: const CustomButton(
                          buttonTitle: 'حساب جديد',
                          textSize: 18,
                        )),
                  ),
                  kVSpace16,
                  Center(
                      child: SizedBox(
                          width: 266,
                          height: 266,
                          child: Image.asset('images/office-workplace.png'))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
