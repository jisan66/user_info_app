import 'package:flutter/material.dart';
import 'package:user_info_app/presentation/screens/show_users_profile/show_user_profile_screen.dart';
import 'package:user_info_app/presentation/screens/user_add/user_add_screen.dart';
import 'package:user_info_app/widgets/appbar.dart';
import 'package:user_info_app/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FixedAppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              CustomButton(
                width: 60,
                buttonText: "Add User",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  const UserAddScreen()));
                },
              ),
              CustomButton(
                width: 60,
                buttonText: "Users List",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  const ShowUsersScreen()));
                },
              )
          ],
        ),
      ),
    );
  }
}
