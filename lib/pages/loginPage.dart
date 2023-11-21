import 'package:chat_app_box/components/my_button_file.dart';
import 'package:chat_app_box/components/my_text_file.dart';
import 'package:chat_app_box/services/auth/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function() ? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// sign In Function for onTap
void signIn() async{
    final authService = Provider.of<AuthServices>(context, listen: false);

    try {
      await authService.signInEmailPassword(emailController.text, passwordController.text);
      
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
                const Icon(Icons.message,
                size: 80,
                color: Colors.deepOrange,
                ),
              // message
              const SizedBox(height: 50),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    "This is Sign in Page",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),
              // text
              const SizedBox(height: 25),

              MyTextField(
                controller: emailController, 
                hintText: "Enter Email",
                 obscureText: false
                 ),
              // password
              const SizedBox(height: 25),
              
              MyTextField(
                controller: passwordController,
                 hintText: "Enter Password",
                 obscureText: true
                 ),
              // signup
              const SizedBox(height: 50),

              MyButton(onTap: (){}, text: "Sign In"),
              // register?
              const SizedBox(height: 50),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not Register?"),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: 
                    const Text("Register Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15,
                    ),
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