// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/components/home/home_nav.dart';
import 'package:get_storage/get_storage.dart';
import '../../components/Customer/CustomerNavBar.dart';
import '../../components/auth/popup_message.dart';
import '../../constants/spaces.dart';
import '../../services/api/auth/login_user.dart';
import '../../services/extensions/nav.dart';
import 'reset_password.dart';
import 'sign_up.dart';
import '../../components/All/custom_button.dart';
import '../../components/All/text_button.dart';
import '../../components/All/textfield.dart';
import '../../components/All/title_page.dart';
import '../../constants/colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({
    super.key,
  });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 88, horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TitlePage(title: 'تسجيل الدخول'),
                  TextButtonQuestion(
                    question: 'ليس لديك حساب؟',
                    login: 'حساب جديد',
                    page: const SignUp(),
                  ),
                  kVSpace32,
                  TextFieldCustom(
                      label: 'البريد الالكتروني',
                      textController: emailController),
                  kVSpace24,
                  TextFieldCustom(
                      label: 'كلمة المرور', textController: passwordController),
                  kVSpace24,
                  TextButtonQuestion(
                    login: 'نسيت كلمة المرور؟',
                    page: const ResetPassowrd(),
                  ),
                  kVSpace64,
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 105, vertical: 16),
                            backgroundColor: darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () async {
                          final response = await loginUser(body: {
                            "email": emailController.text,
                            "password": passwordController.text,
                          });
                          if (response.statusCode == 200) {
                            final box = GetStorage();
                            box.write(
                                "token", json.decode(response.body)["token"]);
                            box.write("UserType",
                                json.decode(response.body)["UserType"]);

                            if (box
                                .read("UserType")
                                .toString()
                                .contains("customer")) {
                              context.pushAndRemove(
                                  view: const CustomerNavBar());
                            } else if (box
                                .read("UserType")
                                .toString()
                                .contains("owner")) {
                              context.pushAndRemove(view: const HomeNav());
                            }
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  const PopUpMessage(),
                            );
                          }
                        },
                        child: const CustomButton(
                          buttonTitle: 'تسجيل الدخول',
                          textSize: 18,
                        )),
                  ),
                  kVSpace16,
                  Center(
                      child: SizedBox(
                          width: 266,
                          height: 266,
                          child: Image.asset('images/office-workplace.png')))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
