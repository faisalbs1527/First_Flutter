import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final VoidCallback onSuffixIconTap;

  const CustomTextField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.onTap,
      required this.controller,
      required this.onSuffixIconTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        onTap: onTap,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          suffixIcon: GestureDetector(
            onTap: () {
              onSuffixIconTap();
            },
            child: Image.asset(
              'assets/search_icon.png',
              width: 42,
              height: 60,
            ),
          ),
        ),
      ),
    );
  }
}
