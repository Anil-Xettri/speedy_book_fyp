import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/signup_controller.dart';
import '../utils/validator.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool visible = true;
  togglePassword() {
    visible = !visible;
    setState(() {});
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
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
                controller: fullnameController,
                validator: fullnameValidator,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: "enter your fullname",
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
                controller: numberController,
                validator: numberValidator,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  hintText: "enter your number",
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
                controller: emailController,
                validator: emailValidator,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.mail,
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
                  hintText: "create password",
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
              child: TextFormField(
                controller: confirmPasswordController,
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
                  hintText: "Confirm password",
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
              child: GetBuilder<SignupController>(
                init: SignupController(),
                initState: (_) {},
                builder: (controller) {
                  return ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.signup(
                          fullnameController.text.trim(),
                          numberController.text.trim(),
                          emailController.text.trim(),
                          passwordController.text.trim(),
                          confirmPasswordController.text.trim(),
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
                            "Signup",
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
                  "Already Have Account ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Login",
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
