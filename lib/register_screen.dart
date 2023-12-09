import 'package:flutter/material.dart';
import 'package:ieee_provider_task/custom_button.dart';
import 'package:ieee_provider_task/custom_text_form_field.dart';
import 'package:ieee_provider_task/first_screen.dart';
import 'package:ieee_provider_task/register_provider.dart';
import 'package:ieee_provider_task/user_model.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  static final TextEditingController nameController = TextEditingController();

  static final TextEditingController emailController = TextEditingController();

  static final TextEditingController phoneController = TextEditingController();

  static final TextEditingController passwordController =
      TextEditingController();

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign up',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomFormField(
            label: 'Name',
            controller: nameController,
          ),
          CustomFormField(
            label: 'Email',
            controller: emailController,
          ),
          CustomFormField(
            label: 'Phone',
            controller: phoneController,
          ),
          CustomFormField(
            label: 'Password',
            controller: passwordController,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomMaterialButton(
            onPressed: () {
              Provider.of<RegisterProvider>(context,listen: false).register(
                UserModel(
                  name: nameController.text,
                  phone: phoneController.text,
                  email: emailController.text,
                  password: passwordController.text,
                ),
              );
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ),
              );
            },
            label: 'Sign up',
          )
        ],
      ),
    );
  }
}
