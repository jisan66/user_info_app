import 'package:flutter/material.dart';
import 'package:user_info_app/presentation/screens/show_users_profile/custom_text_form.dart';
import 'package:user_info_app/widgets/appbar.dart';
import 'package:user_info_app/widgets/custom_button.dart';

class UserAddScreen extends StatefulWidget {
  const UserAddScreen({super.key});

  @override
  State<UserAddScreen> createState() => _UserAddScreenState();
}

class _UserAddScreenState extends State<UserAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FixedAppBar(
        title: Text("Add User"),
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextForm(controller: null, labelText: "Name", obscureText: false),
            CustomTextForm(controller: null, labelText: "Email", obscureText: false),
            CustomTextForm(controller: null, labelText: "Password", obscureText: true),
            SizedBox(height: 60,),
            CustomButton(onTap: (){}, buttonText: "Next", width: double.infinity)
          ],
        ),
      ),
    );
  }
}
