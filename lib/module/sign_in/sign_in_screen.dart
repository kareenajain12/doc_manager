import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Align(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                        isDense: true,
                        hintStyle: const TextStyle(
                          color: Colors.white24,
                          fontSize: 17,
                        ),
                        label: const Text('Email',
                            style: TextStyle(color: Colors.white)),
                        hintText: 'Enter mail',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                        isDense: true,
                        hintStyle: const TextStyle(
                          color: Colors.white24,
                          fontSize: 17,
                        ),
                        label: const Text('Password',
                            style: TextStyle(color: Colors.white)),
                        hintText: 'Enter Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blueGrey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        // Perform an action when the button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 50,
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          height: 1,
                          width: 150,
                        )),
                        const Padding(
                          padding: EdgeInsets.only(left: 4, right: 4),
                          child: Text(
                            "or",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          height: 1,
                          width: 150,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, bottom: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google_logo.png',
                                height: 30,
                                width: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      TextButton(onPressed: () {}, child: const Text("Register",
                        style: TextStyle(color: Colors.green, fontSize: 20,),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
