import 'package:flutter/material.dart';
import 'package:user_info_app/widgets/appbar.dart';

class ShowUsersScreen extends StatelessWidget {
  const ShowUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FixedAppBar(
        title: Text("Users List"),
      ),
    );
  }
}
