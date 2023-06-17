import 'package:flutter/material.dart';
import 'package:frontend/components/title_page.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/api/auth/confirm_password.dart';
import '../../components/custom_button.dart';
import '../../components/text_button.dart';
import '../../components/textfield.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final resetPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitlePage(title: 'تأكيد كلمة المرور'),
                  TextButtonQuestion(question: 'استعدت حسابك بنجاح'),
                  Image.asset('images/otp-security.png',
                      width: 316, height: 316),
                  TextFieldCustom(
                      label: 'كلمة المرور',
                      textController: resetPasswordController),
                  kVSpace32,
                  TextFieldCustom(
                      label: 'تأكيد كلمة المرور',
                      textController: resetPasswordController),
                  kVSpace32,
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: darkBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          final response = await confirmPassword(body: {
                            "password": resetPasswordController.text
                          });
                          if (response.statusCode == 200) {
                            // context.nextPage(view: ??);
                          }
                        },
                        child: CustomButton(buttonTitle: ' حفظ', textSize: 18)),
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
