import 'package:flutter/material.dart';
import 'package:login_page/widgets/input_field.dart';
import 'package:login_page/widgets/text_button.dart';
import 'package:login_page/widgets/text_with_circle.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                'Create\nAccount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          const InputField(
                            hintText: 'Name',
                            borderColor: Colors.black54,
                            fillColor: Colors.white,
                            hintColor: Colors.grey,
                          ),
                          const SizedBox(height: 15.0),
                          const InputField(
                            hintText: 'Email',
                            borderColor: Colors.black54,
                            fillColor: Colors.white,
                            hintColor: Colors.grey,
                          ),
                          const SizedBox(height: 15.0),
                          const InputField(
                            hintText: 'password',
                            borderColor: Colors.black54,
                            fillColor: Colors.white,
                            hintColor: Colors.grey,
                            password: true,
                          ),
                          const SizedBox(height: 30.0),
                          TextWithCircle(
                            label: 'Sign Up',
                            labelColor: Colors.white,
                            onPress: () {
                              Navigator.pushNamed(context, 'login');
                            },
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyTextButton(
                                  label: 'Sign in',
                                  labelColor: Colors.white,
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                            ],
                          )
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
