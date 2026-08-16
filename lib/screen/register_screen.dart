import 'package:flutter/material.dart';
import '../widget/buttoms.dart';
import '../widget/custom_text_field.dart';
import '../widget/custom_text_field_validator.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.42),
              Center(child: Image.asset('assets/images/carrot.png')),
              SizedBox(height: 100.21),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),
              Text(
                'Enter your credentials to continue',
                style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
              ),
              SizedBox(height: 40),
              CustomTextFieldValidator(
  formKey: loginFormKey,
  children: [
    CustomTextField(
      label: 'Username',
      labelColor: Color(0xff7C7C7C),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your username';
        }
        if(value.length<6){
          return 'Username must be at least 6 characters';
        }
        return null;
      },
    ),

    SizedBox(height: 30),
    CustomTextField(
      label: 'Email',
      labelColor: Color(0xff7C7C7C),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }

        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }

        return null;
      },
    ),

    SizedBox(height: 30),
    CustomTextField(
      label: 'Password',
      labelColor: Color(0xff7C7C7C),
      fontSize: 16,
      fontWeight: FontWeight.w600,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
          return 'Password must contain at least one special character';
        }
        if(!value.contains((RegExp(r'[A-Z]')))){
          return 'Password must contain at least one uppercase letter';
        }
        if(!value.contains((RegExp(r'[0-9]')))){
          return 'Password must contain at least one number';
        }
        if (value.length < 10) {
          return 'Password must be at least 10 characters';
        }

        return null;
      },
    ),
  ],
),

SizedBox(height: 20),

Align(
  alignment: Alignment.centerRight,
  child: Text(
    'forget password',
    style: TextStyle(
      fontSize: 14,
      color: Color(0xff181725),
    ),
  ),
),
              SizedBox(height: 30),
              Buttom(
                text: 'Login',
                ontap: () {if (loginFormKey.currentState!.validate()) {
                print('Login OK');}},
                color: Color(0xff53B175),
                textcolor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                fontsize: 18,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  Text(
                    'SignUp',
                    style: TextStyle(
                      color: Color(0xff53B175),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
