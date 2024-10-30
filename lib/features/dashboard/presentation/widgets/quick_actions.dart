import 'package:first_flutter/features/dashboard/presentation/widgets/quick_action_button.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget{
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuickActionButton(
            title: 'Video Call',
            icon: 'assets/video_call.png',
            onTap: () {},
          ),
          QuickActionButton(
            title: 'Notification',
            icon: 'assets/notification.png',
            onTap: () {},
          ),
          QuickActionButton(
            title: 'Voice Call',
            icon: 'assets/voice_call.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }

}