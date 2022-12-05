import 'package:flutter/material.dart';
import 'package:login_page/provider/my_provider.dart';
import 'package:login_page/widgets/input_field.dart';
import 'package:login_page/widgets/text_button.dart';
import 'package:provider/provider.dart';
import 'widgets/text_with_circle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 45.0, top: 130),
              child: const Text(
                'Wellcome\nBack',
                style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          const InputField(
                            hintText: 'Email',
                            borderColor: Colors.grey,
                            fillColor: Colors.white,
                            hintColor: Colors.grey,
                          ),
                          const SizedBox(height: 10.0),
                          const InputField(
                            hintText: 'Password',
                            borderColor: Colors.grey,
                            fillColor: Colors.white,
                            hintColor: Colors.grey,
                            password: true,
                          ),
                          const SizedBox(height: 40.0),
                          TextWithCircle(
                              label: 'Sign in',
                              labelColor: Colors.black87,
                              onPress: (() {
                                Navigator.pushNamed(context, 'register');
                              })),
                          const SizedBox(height: 25.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyTextButton(
                                  label: 'Sign up',
                                  onTap: () {
                                    Navigator.pushNamed(context, 'register');
                                  },
                                  labelColor: const Color(0xff4c505b)),
                              MyTextButton(
                                label: 'Forget Password',
                                onTap: () {},
                                labelColor: const Color(0xff4c505b),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
