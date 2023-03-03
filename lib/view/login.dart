import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_book/utils/validator.dart';
import 'package:speedy_book/view/signup.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visible = true;
  togglePassword() {
    visible = !visible;
    setState(() {});
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    // final double devHeight = MediaQuery.of(context).size.height;
    // final double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 420,
              child: Image.asset("assets/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                validator: emailValidator,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: "enter your email",
                  hintStyle: const TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                validator: checkPasswordValidator,
                obscureText: visible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: "enter password",
                  hintStyle: const TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: togglePassword,
                    icon: Icon(
                      visible ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder<LoginController>(
                init: LoginController(),
                initState: (_) {},
                builder: (controller) {
                  return ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.login(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                          context,
                        );
                      }
                      setState(() {
                        isLoading = true;
                      });
                      Future.delayed(const Duration(seconds: 3), () {
                        setState(() {
                          isLoading = false;
                        });
                      });
                    },
                    child: isLoading
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Loading...",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ],
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have Account ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
