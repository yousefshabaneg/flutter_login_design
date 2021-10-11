import 'package:first_flutter_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 60.0,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  defaultFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validate: (value) {
                      return value!.isEmpty
                          ? 'Please enter a valid email address. '
                          : null;
                    },
                    prefixIcon: Icons.email,
                    label: 'Email Address',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    validate: (value) {
                      return value!.isEmpty
                          ? 'Please enter a valid password with at least 8 letters. '
                          : null;
                    },
                    prefixIcon: Icons.lock,
                    label: 'Password',
                    isPassword: isVisible,
                    suffixIcon:
                        isVisible ? Icons.visibility : Icons.visibility_off,
                    onPressed: () => setState(() {
                      isVisible = !isVisible;
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          print('Forgotted Password!');
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultButton(
                    text: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                    radius: 20,
                    background: Colors.blue,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '''Don't have an account? ''',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 16.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print('Sign Up');
                        },
                        child: Text('Register Now'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
