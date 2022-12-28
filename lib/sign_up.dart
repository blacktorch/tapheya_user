import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:form_validator/form_validator.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';
import 'password_field.dart';
import 'button.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({Key? key}) : super(key: key);

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  final Uri _url = Uri.parse('http://tapheya.com');

  @override
  Widget build(BuildContext context) {
    final _screen_width = (MediaQuery.of(context).size.width);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kAccentMid,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: kBGWhite,
        elevation: 0.1,
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 0, 5),
              child: Text(
                "Sign Up",
                style: kHeading2,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 5),
              child: Text(
                "It only takes a minute to create your account",
                style: kBody1,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "First Name",
                        hintStyle: kHintText,
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: kLightGrey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: kAccent,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Last Name",
                        hintStyle: kHintText,
                        isDense: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: kLightGrey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: kAccent,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email address",
                  hintStyle: kHintText,
                  isDense: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: kLightGrey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: kAccent,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: PasswordField(
                //errorText: errorText,
                onChanged: (final String v) {
                  //password = v;
                },
                hintText: 'Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 24, 16, 0),
              child: Row(
                children: [
                  const CheckboxInput(),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I agree to Tapheya\'s ',
                          style: kBody2,
                        ),
                        TextSpan(
                          text: 'Terms of Services',
                          style: const TextStyle(
                            color: kAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _launchUrl();
                            },
                        ),
                        TextSpan(
                          text: ' and \n',
                          style: kBody2,
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: const TextStyle(
                            color: kAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _launchUrl();
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                pressed: () {},
                title: 'Sign Up',
                backgroundColor: kPrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                const Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "OR",
                    style: kBody2,
                  ),
                ),
                const Expanded(child: Divider()),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Center(
                child: SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                  text: 'Continue with Google',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                  padding: EdgeInsets.fromLTRB(
                      _screen_width / 5, 8, _screen_width / 5, 8),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already registered?',
                  style: kBody2,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                  style: TextButton.styleFrom(
                    textStyle: kTextButtonAccent,
                    foregroundColor: kAccent,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  State<CheckboxInput> createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        value: isChecked,
        activeColor: kAccent,
        side: const BorderSide(
          width: 1,
          color: kMidGrey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
