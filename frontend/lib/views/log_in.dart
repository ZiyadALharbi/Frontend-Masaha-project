// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'package:flutter/material.dart';
import '../views/sign_up.dart';
import 'package:get_storage/get_storage.dart';
import '../components/auth/popup_message.dart';
import '../components/custom_button.dart';
import '../components/text_button.dart';
import '../components/textfield.dart';
import '../components/title_page.dart';
import '../constants/colors.dart';
import '../services/api/auth/login_user.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
              padding: const EdgeInsets.symmetric(vertical: 88, horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitlePage(title: 'تسجيل الدخول'),
                  TextButtonQuestion(
                    question: 'ليس لديك حساب؟',
                    login: 'حساب جديد',
                    page: SignUp(),
                  ),
                  TextFieldCustom(
                      label: 'البريد الالكتروني',
                      textController: emailController),
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
                          final response = await loginUser(body: {
                            "email": emailController.text,
                            "password": passwordController.text,
                          });
                          if (response.statusCode == 200) {
                            final box = GetStorage();
                            box.write("token",
                                json.decode(response.body)["data"]["token"]);
                            // context.nextPage(view: ??);
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => PopUpMessage(),
                            );
                          }
                        },
                        child: CustomButton(
                          buttonTitle: 'تسجيل الدخول',
                        )),
                  ),
                  SizedBox(height: 24),
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
