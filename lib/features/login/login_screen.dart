

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/features/homescreen/home_screen.dart';

import '../../utils/header.dart';
import '../../utils/widgets/custom_textfield.dart';
import '../login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
         
            children: [
           const    Header(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
             
               CustomTextFieldWidget(
                tController: controller.nameController1,
                labelText: 'Enter your user name',
                title: "name",
                icon: Icon(Icons.account_circle_sharp),
              ),
             
              const SizedBox(
                height: 10,
              ),
               CustomTextFieldWidget(
                tController:controller.passwordController1 ,
                obscureText: true,
                labelText: 'password',
                title: "Password",
                icon: Icon(Icons.key),
              ),
           
             
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                  controller.   onSubmit();
                    // Get.to(HomeScreen());
                  },
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Center(
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));}),
    );
  }
}