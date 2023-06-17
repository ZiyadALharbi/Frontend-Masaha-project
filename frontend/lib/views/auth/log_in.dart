// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import '../../constants/spaces.dart';
import '../../services/extensions/next_page.dart';
import 'reset_password.dart';
import 'sign_up.dart';
import 'package:get_storage/get_storage.dart';
import '../../components/auth/popup_message.dart';
import '../../components/custom_button.dart';
import '../../components/text_button.dart';
import '../../components/textfield.dart';
import '../../components/title_page.dart';
import '../../constants/colors.dart';
import '../../services/api/auth/login_user.dart';
import '../owner/home_screen.dart';

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
                    page: SignUp(),
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
                    page: ResetPassowrd(),
                  ),
                  kVSpace64,
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
                          child: Image.asset('images/office-workplace.png'))),
                  ElevatedButton(
                      onPressed: () {
                        context.nextPage(
                          view: const HomeScreen(),
                        );
                      },
                      child: const Icon(Icons.next_plan))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
