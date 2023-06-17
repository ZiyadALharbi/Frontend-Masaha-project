import 'package:flutter/material.dart';
import 'package:frontend/components/title_page.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/extensions/next_page.dart';
import '../../components/custom_button.dart';
import '../../components/text_button.dart';
import '../../components/textfield.dart';
import '../../services/api/auth/reset_password.dart';
import 'confirm_password.dart';

class ResetPassowrd extends StatefulWidget {
  const ResetPassowrd({super.key});

  @override
  State<ResetPassowrd> createState() => _ResetPassowrdState();
}

class _ResetPassowrdState extends State<ResetPassowrd> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitlePage(title: 'نسيت كلمة المرور'),
                  TextButtonQuestion(
                      question:
                          'سوف يتم إرسال رمز التحقق على البريد الالكتروني'),
                  Image.asset('images/otp-security.png',
                      width: 316, height: 316),
                  TextFieldCustom(
                      label: 'البريد الالكتروني',
                      textController: emailController),
                  kVSpace32,
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          final response = await resetPassword(body: {
                            "email": emailController.text
                          });
                          if (response.statusCode == 200) {
                            context.nextPage(view: const ConfirmPassword());
                          }
                        },
                        child: CustomButton(buttonTitle: 'أرسل رمز التحقق')),
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
