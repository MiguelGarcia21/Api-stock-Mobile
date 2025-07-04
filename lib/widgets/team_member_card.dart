import 'package:flutter/material.dart';
import 'package:stock_frontend/constants/colors.dart';
import 'package:stock_frontend/constants/styles.dart';

class TeamMemberCard extends StatelessWidget {
  final String initials;
  final String name;
  final String role;
  final String email;

  const TeamMemberCard({
    super.key,
    required this.initials,
    required this.name,
    required this.role,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: AppColors.cardBackground,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.primary,
              child: Text(
                initials,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.background,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(name, style: AppStyles.boldText),
            Text(role, style: AppStyles.secondaryText),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => debugPrint('Contact pressed for $email'),
              style: AppStyles.outlineButton,
              child: const Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
