import 'package:first_flutter/features/dashboard/presentation/widgets/menu_section.dart';
import 'package:first_flutter/features/dashboard/presentation/widgets/quick_actions.dart';
import 'package:first_flutter/features/dashboard/presentation/widgets/upgrade_card.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_text_field.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashboardScreen> {
  final TextEditingController _controller = TextEditingController();
  String _textFieldText = '';

  void _clearTextField() {
    FocusScope.of(context).unfocus();
    setState(() {
      _textFieldText = _controller.text;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/top_background.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 36.0, left: 20.0, right: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hello',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        'Md. Faisal Ahammed',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/profile.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 50.0),
                          const QuickActions()
                        ],
                      ),
                    ],
                  ),
                ),

                // Quick Actions
                const SizedBox(height: 20),

                // Search Bar
                CustomTextField(
                  hintText: 'Search For...',
                  suffixIcon: Icons.search,
                  controller: _controller,
                  onSuffixIconTap: _clearTextField,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.only(top: 16),
                  alignment: Alignment.center,
                  child: Text(
                    "Searched for $_textFieldText",
                    style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const UpgradeCard(),
                const SizedBox(height: 8),

                // Menu Grid
                const MenuSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
