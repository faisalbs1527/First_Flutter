import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onTap;

  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.only(bottom: 4.0),
            decoration: BoxDecoration(
              color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(icon, width: 52, height: 52),
          ),
          Text(title,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}
