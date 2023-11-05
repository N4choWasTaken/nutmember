import 'package:flutter/material.dart';
import 'package:nutmember/responsive/widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
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
              Flexible(flex: 2, child: Container()),

              Stack(
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?auto=format&fit=crop&q=80&w=1931&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo))
                  )
                ],
              ),
              const SizedBox(height: 24),


              TextFieldInput(hintText: 'Enter your username', textInputType: TextInputType.text, textEditingController: _usernameController),
              const SizedBox(height: 24),

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

              Flexible(flex: 2, child: Container()),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text("Already have an account?"),
                  ),

                  GestureDetector(
                    onTap: null,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text("Sign in.", style: TextStyle(
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