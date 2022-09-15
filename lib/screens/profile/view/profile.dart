import 'package:flutter/material.dart';
import 'package:hi_beat/src/res.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: AppColors.black),
      child: const Text(
        'Profile',
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}
