import 'package:flutter/material.dart';
import 'package:nutmember/responsive/widgets/text_field_input.dart';
import 'package:nutmember/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              Flexible(child: Container(), flex: 2),
              TextFieldInput(hintText: 'Enter your email', textInputType: TextInputType.emailAddress, textEditingController: _emailController),
              const SizedBox(height: 24),
              TextFieldInput(hintText: 'Enter your password', textInputType: TextInputType.emailAddress, textEditingController: _passwordController, isPass: true,),
              const SizedBox(height: 24),
              InkWell(
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  color: Color.fromRGBO(202, 177, 155, 1),
                  ),
                  child: const Text('Log in'),
                )
              ),
              const SizedBox(height: 12),
              Flexible(child: Container(), flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Don't have an account?"),
                  ),

                  GestureDetector(
                    onTap: () => const SignUpScreen(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text("Sign up.", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                    )
                  )
                ],
              )
            ],
          )
          ),
        )
    );
  }
}