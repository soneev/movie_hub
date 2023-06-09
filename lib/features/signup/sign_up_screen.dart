import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:movieapp/data/local_storage.dart';
import 'package:movieapp/features/login/login_screen.dart';

import '../../utils/widgets/custom_textfield.dart';
import '../../utils/header.dart';
import '../../utils/widgets/profession-dropdown.dart';
import '../login_controller.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GetBuilder<LoginController>(
          init: LoginController(),
          builder: (controller) {
            return
      
      
      SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const    Header(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "SignUp",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
               CustomTextFieldWidget(
                tController: controller.nameController,
                labelText: 'Enter your name',
                title: "Name",
                icon: Icon(Icons.account_circle_sharp),
              ),
              const SizedBox(
                height: 10,
              ),
               CustomTextFieldWidget(
                tController: controller.emailController,
                labelText: 'Enter your Email',
                title: "Email",
                icon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 10,
              ),
               CustomTextFieldWidget(
                tController: controller.phoneController,
                labelText: 'Enter your number',
                title: "mobile number",
                icon: const Icon(Icons.phone),
              ),
              const SizedBox(
                height: 10,
              ),
               CustomTextFieldWidget(
                obscureText: true,
                labelText: 'password',
                title: "Password",
                icon: const Icon(Icons.key), 
                tController: controller.passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Profession",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
               DropdownField(
                hintText: "Profession",
                value: controller.dropdownValue,
                // "actor",
                options:const  ["actor", "director", "professional"],
                onChanged:(value){
                  controller. onchange(value!);
                }
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: ()async {
                       await  TRSecureStorage().writeData('name',
                          controller.nameController.value.text);
                          print('${ TRSecureStorage().writeData('name',
                          controller.nameController.value.text).toString()}');
                    await  TRSecureStorage().writeData('password',
                          controller.passwordController.value.text);
                    Get.to(const LoginScreen());
                  },
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Center(
                      child: Text("Sign up",
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
