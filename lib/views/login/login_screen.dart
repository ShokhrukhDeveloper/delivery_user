import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          const Text(
                            'Kirish',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          const SizedBox(height: 10),
                          Image.asset('images/car.jpg'),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: phoneController,
                              validator: (input) {
                                if (phoneController.text.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'Telefon raqamini kiritishingiz kerak';
                                }
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Telefon raqami',
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                            ),
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordController,
                              validator: (input) {
                                if (passwordController.text.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'Parolni kiritishingiz kerak';
                                }
                              },
                              decoration: const InputDecoration(
                                hintText: 'Parolingizni kiriting',
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 150,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                textColor: Colors.white,
                                color: Colors.green,
                                child: const Text('Kirish'),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.telegram,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 40),
                                  Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.pink,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Powered by ',
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                  TextSpan(
                                      text: 'Shoxrux',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
