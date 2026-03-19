import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Profile & Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/user_avatar.png'), // Placeholder
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Color(0xFF1A73E8),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.edit, color: Colors.white, size: 16),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Column(
              children: [
                Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Premium Member', style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.w600)),
                    SizedBox(width: 8),
                    Text('Since 2023', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit, size: 18),
              label: const Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A73E8),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildQuickActionItem(Icons.description_outlined, 'My Reports'),
              _buildQuickActionItem(Icons.local_pharmacy_outlined, 'Prescriptions'),
              _buildQuickActionItem(Icons.payment_outlined, 'Payments'),
            ],
          ),
          const SizedBox(height: 32),
          _buildSectionHeader('MEDICAL DETAILS'),
          const SizedBox(height: 12),
          _buildSettingsItem(Icons.history, 'Medical History', Colors.red.shade50, Colors.red),
          _buildSettingsItem(Icons.verified_user_outlined, 'Insurance Info', Colors.green.shade50, Colors.green),
          _buildSettingsItem(Icons.emergency_outlined, 'Emergency Contacts', Colors.orange.shade50, Colors.orange),
          const SizedBox(height: 24),
          _buildSectionHeader('APP PREFERENCES'),
          const SizedBox(height: 12),
          _buildSettingsItem(Icons.notifications_outlined, 'Push Notifications', Colors.blue.shade50, Colors.blue, trailing: Switch(value: true, onChanged: (v) {}, activeColor: Colors.blue)),
          _buildSettingsItem(Icons.language, 'Language', Colors.purple.shade50, Colors.purple, value: 'English (US)'),
          _buildSettingsItem(Icons.lock_outline, 'Privacy & Security', Colors.blueGrey.shade50, Colors.blueGrey),
          const SizedBox(height: 24),
          _buildSectionHeader('ACCOUNT'),
          const SizedBox(height: 12),
          _buildSettingsItem(Icons.more_horiz, 'Change Password', Colors.blue.shade50, Colors.blue),
          _buildSettingsItem(Icons.help_outline, 'Help & Support', Colors.teal.shade50, Colors.teal),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: const Text('Log Out', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Column(
              children: [
                const Text('Version 2.4.0 (Build 1045)', style: TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Terms of Service', style: TextStyle(color: Colors.blue.shade300, fontSize: 12)),
                    const SizedBox(width: 8),
                    const Icon(Icons.circle, size: 4, color: Colors.grey),
                    const SizedBox(width: 8),
                    Text('Privacy Policy', style: TextStyle(color: Colors.blue.shade300, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFF1A73E8),
        icon: const Icon(Icons.smart_toy_outlined),
        label: const Text('AI Help'),
      ),
    );
  }

  Widget _buildQuickActionItem(IconData icon, String label) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF1A73E8)),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(color: Colors.blueGrey, fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.2),
    );
  }

  Widget _buildSettingsItem(IconData icon, String title, Color bgColor, Color iconColor, {Widget? trailing, String? value}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
        trailing: trailing ??
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (value != null) Text(value, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(width: 4),
                const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
              ],
            ),
      ),
    );
  }
}
