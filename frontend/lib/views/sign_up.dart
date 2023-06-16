// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../services/extensions/next_page.dart';
import '../components/auth/popup_message.dart';
import '../components/auth/radio_button.dart';
import '../components/custom_button.dart';
import '../components/text_button.dart';
import '../components/textfield.dart';
import '../components/title_page.dart';
import '../constants/colors.dart';
import '../services/api/auth/create_user.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitlePage(title: 'حساب جديد'),
                  TextButtonQuestion(
                    question: 'لديك حساب؟',
                    login: 'تسجيل الدخول',
                    page: LogIn(),
                  ),
                  TextFieldCustom(
                    label: 'الإسم',
                    textController: nameController,
                  ),
                  SizedBox(height: 24),
                  TextFieldCustom(
                      label: 'رقم الجوال', textController: phoneController),
                  SizedBox(height: 24),
                  TextFieldCustom(
                      label: 'البريد الالكتروني',
                      textController: emailController),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      RadioButton(text: 'عميل'),
                      SizedBox(width: 24),
                      RadioButton(text: 'مالك'),
                    ],
                  ),
                  SizedBox(height: 24),
                  TextFieldCustom(
                      label: 'كلمة المرور', textController: passwordController),
                  SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          final response = await createUser(body: {
                            "email": emailController.text,
                            "password": passwordController.text,
                            "name": nameController.text
                          });
                          if (response.statusCode == 200) {
                            context.nextPage(view: LogIn());
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => PopUpMessage(),
                            );
                          }
                        },
                        child: CustomButton(
                          buttonTitle: 'حساب جديد',
                        )),
                  ),
                  Center(
                      child: SizedBox(
                          width: 300,
                          height: 300,
                          child: Image.asset('images/work-place.png'))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
